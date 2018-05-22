package com.itextpdf.html2pdf.css.selector.item;

import com.itextpdf.html2pdf.html.node.ICustomElementNode;
import com.itextpdf.html2pdf.html.node.IDocumentNode;
import com.itextpdf.html2pdf.html.node.IElementNode;
import com.itextpdf.html2pdf.html.node.INode;
import java.util.List;

class CssPseudoClassNthSelectorItem extends CssPseudoClassChildSelectorItem {
    /**
     * The nth A.
     */
    private int nthA;

    /**
     * The nth B.
     */
    private int nthB;

    CssPseudoClassNthSelectorItem(String pseudoClass, String arguments) {
        super(pseudoClass, arguments);
        getNthArguments();
    }

    @Override
    public boolean matches(INode node) {
        if (!(node instanceof IElementNode) || node instanceof ICustomElementNode || node instanceof IDocumentNode) {
            return false;
        }
        List<INode> children = getAllSiblings(node);
        return !children.isEmpty() && resolveNth(node, children);
    }

    /**
     * Gets the nth arguments.
     */
    protected void getNthArguments() {
        if (arguments.matches("((-|\\+)?[0-9]*n(\\s*(-|\\+)\\s*[0-9]+)?|(-|\\+)?[0-9]+|odd|even)")) {
            if (arguments.equals("odd")) {
                this.nthA = 2;
                this.nthB = 1;
            } else if (arguments.equals("even")) {
                this.nthA = 2;
                this.nthB = 0;
            } else {
                int indexOfN = arguments.indexOf('n');
                if (indexOfN == -1) {
                    this.nthA = 0;
                    this.nthB = Integer.valueOf(arguments);
                } else {
                    String aParticle = arguments.substring(0, indexOfN).trim();
                    if (aParticle.isEmpty())
                        this.nthA = 0;
                    else if (aParticle.length() == 1 && !Character.isDigit(aParticle.charAt(0)))
                        this.nthA = aParticle.equals("+") ? 1 : -1;
                    else
                        this.nthA = Integer.valueOf(aParticle);
                    String bParticle = arguments.substring(indexOfN + 1).trim();
                    if (!bParticle.isEmpty())
                        this.nthB = Integer.valueOf(bParticle.charAt(0) + bParticle.substring(1).trim());
                    else
                        this.nthB = 0;
                }
            }
        } else {
            this.nthA = 0;
            this.nthB = 0;
        }
    }

    /**
     * Resolves the nth.
     *
     * @param node     a node
     * @param children the children
     * @return true, if successful
     */
    protected boolean resolveNth(INode node, List<INode> children) {
        if (!children.contains(node))
            return false;
        if (this.nthA > 0) {
            int temp = children.indexOf(node) + 1 - this.nthB;
            return temp >= 0 && temp % this.nthA == 0;
        } else if (this.nthA < 0) {
            int temp = children.indexOf(node) + 1 - this.nthB;
            return temp <= 0 && temp % this.nthA == 0;
        } else
            return (children.indexOf(node) + 1) - this.nthB == 0;
    }
}
