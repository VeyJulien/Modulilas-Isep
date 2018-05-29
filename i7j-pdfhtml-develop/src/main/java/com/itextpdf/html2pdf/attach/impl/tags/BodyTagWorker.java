/*
    This file is part of the iText (R) project.
    Copyright (c) 1998-2017 iText Group NV
    Authors: Bruno Lowagie, Paulo Soares, et al.
    
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License version 3
    as published by the Free Software Foundation with the addition of the
    following permission added to Section 15 as permitted in Section 7(a):
    FOR ANY PART OF THE COVERED WORK IN WHICH THE COPYRIGHT IS OWNED BY
    ITEXT GROUP. ITEXT GROUP DISCLAIMS THE WARRANTY OF NON INFRINGEMENT
    OF THIRD PARTY RIGHTS
    
    This program is distributed in the hope that it will be useful, but
    WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE.
    See the GNU Affero General Public License for more details.
    You should have received a copy of the GNU Affero General Public License
    along with this program; if not, see http://www.gnu.org/licenses or write to
    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
    Boston, MA, 02110-1301 USA, or download the license from the following URL:
    http://itextpdf.com/terms-of-use/
    
    The interactive user interfaces in modified source and object code versions
    of this program must display Appropriate Legal Notices, as required under
    Section 5 of the GNU Affero General Public License.
    
    In accordance with Section 7(b) of the GNU Affero General Public License,
    a covered work must retain the producer line in every PDF that is created
    or manipulated using iText.
    
    You can be released from the requirements of the license by purchasing
    a commercial license. Buying such a license is mandatory as soon as you
    develop commercial activities involving the iText software without
    disclosing the source code of your own applications.
    These activities include: offering paid services to customers as an ASP,
    serving PDFs on the fly in a web application, shipping iText with a closed
    source product.
    
    For more information, please contact iText Software Corp. at this
    address: sales@itextpdf.com
 */
package com.itextpdf.html2pdf.attach.impl.tags;

import com.itextpdf.html2pdf.attach.ITagWorker;
import com.itextpdf.html2pdf.attach.ProcessorContext;
import com.itextpdf.html2pdf.css.CssConstants;
import com.itextpdf.html2pdf.css.util.CssUtils;
import com.itextpdf.html2pdf.html.node.IElementNode;
import com.itextpdf.layout.IPropertyContainer;
import com.itextpdf.layout.property.Property;
import com.itextpdf.layout.property.UnitValue;

/**
 * TagWorker class for the {@code body} element.
 */
public class BodyTagWorker extends DivTagWorker {

    /** The parent tag worker. */
    private ITagWorker parentTagWorker;

    /**
     * Creates a new {@link BodyTagWorker} instance.
     *
     * @param element the element
     * @param context the context
     */
    public BodyTagWorker(IElementNode element, ProcessorContext context) {
        super(element, context);
        parentTagWorker = context.getState().empty() ? null : context.getState().top();
        if (parentTagWorker != null && parentTagWorker.getElementResult() != null) {
            // TODO this is not in css applier because css applier is called after the elements are added to the document
            // We need to apply font styles here specifically to set font-size to the document because this is needed for
            // inline-blocks with fixed height when the height is smaller than the defined font size
            float em = CssUtils.parseAbsoluteLength(element.getStyles().get(CssConstants.FONT_SIZE));
            if (em != 0) {
                parentTagWorker.getElementResult().setProperty(Property.FONT_SIZE, UnitValue.createPointValue(em));
            }
        }
    }

    /* (non-Javadoc)
     * @see com.itextpdf.html2pdf.attach.ITagWorker#processEnd(com.itextpdf.html2pdf.html.node.IElementNode, com.itextpdf.html2pdf.attach.ProcessorContext)
     */
    @Override
    public void processEnd(IElementNode element, ProcessorContext context) {
        if(parentTagWorker == null)
            super.processEnd(element, context);
    }

    /* (non-Javadoc)
     * @see com.itextpdf.html2pdf.attach.ITagWorker#processContent(java.lang.String, com.itextpdf.html2pdf.attach.ProcessorContext)
     */
    @Override
    public boolean processContent(String content, ProcessorContext context) {
        if (parentTagWorker == null) {
            return super.processContent(content, context);
        } else {
            return parentTagWorker.processContent(content, context);
        }
    }

    /* (non-Javadoc)
     * @see com.itextpdf.html2pdf.attach.ITagWorker#processTagChild(com.itextpdf.html2pdf.attach.ITagWorker, com.itextpdf.html2pdf.attach.ProcessorContext)
     */
    @Override
    public boolean processTagChild(ITagWorker childTagWorker, ProcessorContext context) {
        if (parentTagWorker == null) {
            return super.processTagChild(childTagWorker, context);
        } else {
            return parentTagWorker.processTagChild(childTagWorker, context);
        }
    }

    /* (non-Javadoc)
     * @see com.itextpdf.html2pdf.attach.ITagWorker#getElementResult()
     */
    @Override
    public IPropertyContainer getElementResult() {
        return parentTagWorker == null ? super.getElementResult() : parentTagWorker.getElementResult();
    }
}