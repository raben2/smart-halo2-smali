.class public Llayout/touchInputs/TouchInputsEditItem;
.super Landroid/widget/RelativeLayout;
.source "TouchInputsEditItem.java"


# instance fields
.field private description:Landroid/widget/TextView;

.field private disabledItemLayer:Landroid/view/View;

.field private divider:Landroid/widget/ImageView;

.field private icon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Llayout/touchInputs/TouchInputsEditItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1, p2}, Llayout/touchInputs/TouchInputsEditItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1, p2}, Llayout/touchInputs/TouchInputsEditItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0d00d4

    .line 45
    invoke-static {p1, v0, p0}, Llayout/touchInputs/TouchInputsEditItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0162

    .line 47
    invoke-virtual {p0, v0}, Llayout/touchInputs/TouchInputsEditItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/touchInputs/TouchInputsEditItem;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a015f

    .line 48
    invoke-virtual {p0, v0}, Llayout/touchInputs/TouchInputsEditItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/touchInputs/TouchInputsEditItem;->description:Landroid/widget/TextView;

    const v0, 0x7f0a0161

    .line 49
    invoke-virtual {p0, v0}, Llayout/touchInputs/TouchInputsEditItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/touchInputs/TouchInputsEditItem;->divider:Landroid/widget/ImageView;

    const v0, 0x7f0a0160

    .line 50
    invoke-virtual {p0, v0}, Llayout/touchInputs/TouchInputsEditItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llayout/touchInputs/TouchInputsEditItem;->disabledItemLayer:Landroid/view/View;

    .line 52
    sget-object v0, Lbike/smarthalo/app/R$styleable;->TouchInputsEditItem:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 58
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 59
    iget-object v0, p0, Llayout/touchInputs/TouchInputsEditItem;->divider:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object p2, p0, Llayout/touchInputs/TouchInputsEditItem;->description:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public configureVisuals(Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;Z)V
    .locals 3

    const v0, 0x7f0602d6

    if-eqz p1, :cond_1

    .line 67
    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->tapcode:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Llayout/touchInputs/TouchInputsEditItem;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Llayout/touchInputs/TouchInputsEditItem;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Llayout/touchInputs/TouchInputsEditItem;->getContext()Landroid/content/Context;

    move-result-object v2

    iget p1, p1, Lbike/smarthalo/app/models/PresentationModels/TouchInputItem;->icon:I

    invoke-static {v2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    .line 72
    iget-object p1, p0, Llayout/touchInputs/TouchInputsEditItem;->icon:Landroid/widget/ImageView;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 73
    iget-object p1, p0, Llayout/touchInputs/TouchInputsEditItem;->description:Landroid/widget/TextView;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 74
    iget-object p1, p0, Llayout/touchInputs/TouchInputsEditItem;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Llayout/touchInputs/TouchInputsEditItem;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060020

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Llayout/touchInputs/TouchInputsEditItem;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Llayout/touchInputs/TouchInputsEditItem;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object p1, p0, Llayout/touchInputs/TouchInputsEditItem;->description:Landroid/widget/TextView;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Llayout/touchInputs/TouchInputsEditItem;->icon:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Llayout/touchInputs/TouchInputsEditItem;->description:Landroid/widget/TextView;

    invoke-virtual {p0}, Llayout/touchInputs/TouchInputsEditItem;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object p1, p0, Llayout/touchInputs/TouchInputsEditItem;->description:Landroid/widget/TextView;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 1

    .line 87
    iget-object v0, p0, Llayout/touchInputs/TouchInputsEditItem;->disabledItemLayer:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
