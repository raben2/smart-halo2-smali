.class public Llayout/statusBar/HelpCardItemHeader;
.super Landroid/widget/LinearLayout;
.source "HelpCardItemHeader.java"


# instance fields
.field private binding:Lbike/smarthalo/app/databinding/HelpCardItemHeaderBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "layout_inflater"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    .line 25
    invoke-static {v0, p0, v1}, Lbike/smarthalo/app/databinding/HelpCardItemHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/HelpCardItemHeaderBinding;

    move-result-object v0

    iput-object v0, p0, Llayout/statusBar/HelpCardItemHeader;->binding:Lbike/smarthalo/app/databinding/HelpCardItemHeaderBinding;

    .line 27
    sget-object v0, Lbike/smarthalo/app/R$styleable;->HelpCardItemHeader:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, -0xff01

    .line 30
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 31
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Llayout/statusBar/HelpCardItemHeader;->binding:Lbike/smarthalo/app/databinding/HelpCardItemHeaderBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/HelpCardItemHeaderBinding;->header:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Llayout/statusBar/HelpCardItemHeader;->binding:Lbike/smarthalo/app/databinding/HelpCardItemHeaderBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/HelpCardItemHeaderBinding;->leftBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 35
    iget-object v0, p0, Llayout/statusBar/HelpCardItemHeader;->binding:Lbike/smarthalo/app/databinding/HelpCardItemHeaderBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/HelpCardItemHeaderBinding;->rightBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
