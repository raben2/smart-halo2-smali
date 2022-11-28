.class public Llayout/SearchResultItemLayout;
.super Landroid/widget/RelativeLayout;
.source "SearchResultItemLayout.java"


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private imageColor:I

.field private imageView:Landroid/widget/ImageView;

.field private string:Ljava/lang/String;

.field private subString:Ljava/lang/String;

.field private subTextView:Landroid/widget/TextView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Llayout/SearchResultItemLayout;->imageColor:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v1}, Llayout/SearchResultItemLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Llayout/SearchResultItemLayout;->imageColor:I

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Llayout/SearchResultItemLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Llayout/SearchResultItemLayout;->imageColor:I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Llayout/SearchResultItemLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 43
    sget-object v0, Lbike/smarthalo/app/R$styleable;->SearchResultItemLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    .line 45
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Llayout/SearchResultItemLayout;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const p3, 0x7f080228

    .line 48
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Llayout/SearchResultItemLayout;->drawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    const/4 p3, 0x1

    .line 51
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const v2, 0x7f06007f

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Llayout/SearchResultItemLayout;->imageColor:I

    goto :goto_1

    .line 54
    :cond_1
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Llayout/SearchResultItemLayout;->imageColor:I

    .line 57
    :goto_1
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 58
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Llayout/SearchResultItemLayout;->string:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string p3, ""

    .line 60
    iput-object p3, p0, Llayout/SearchResultItemLayout;->string:Ljava/lang/String;

    .line 63
    :goto_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const p2, 0x7f0d00d0

    .line 65
    invoke-static {p1, p2, p0}, Llayout/SearchResultItemLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private updateLayout()V
    .locals 0

    .line 94
    invoke-virtual {p0}, Llayout/SearchResultItemLayout;->requestLayout()V

    .line 95
    invoke-virtual {p0}, Llayout/SearchResultItemLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public handleFinishInflate()V
    .locals 2

    const v0, 0x7f0a0247

    .line 75
    invoke-virtual {p0, v0}, Llayout/SearchResultItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/SearchResultItemLayout;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a014b

    .line 76
    invoke-virtual {p0, v0}, Llayout/SearchResultItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/SearchResultItemLayout;->textView:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Llayout/SearchResultItemLayout;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Llayout/SearchResultItemLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    iget-object v0, p0, Llayout/SearchResultItemLayout;->string:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Llayout/SearchResultItemLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_1
    iget v0, p0, Llayout/SearchResultItemLayout;->imageColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 87
    iget-object v1, p0, Llayout/SearchResultItemLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 90
    :cond_2
    invoke-direct {p0}, Llayout/SearchResultItemLayout;->updateLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 71
    invoke-virtual {p0}, Llayout/SearchResultItemLayout;->handleFinishInflate()V

    return-void
.end method

.method public setDescriptionGone()V
    .locals 2

    .line 138
    iget-object v0, p0, Llayout/SearchResultItemLayout;->subTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0a04fa

    .line 139
    invoke-virtual {p0, v0}, Llayout/SearchResultItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/SearchResultItemLayout;->subTextView:Landroid/widget/TextView;

    .line 141
    :cond_0
    iget-object v0, p0, Llayout/SearchResultItemLayout;->subTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    invoke-direct {p0}, Llayout/SearchResultItemLayout;->updateLayout()V

    return-void
.end method

.method public setDrawable(I)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Llayout/SearchResultItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    iput-object p1, p0, Llayout/SearchResultItemLayout;->drawable:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object p1, p0, Llayout/SearchResultItemLayout;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Llayout/SearchResultItemLayout;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-direct {p0}, Llayout/SearchResultItemLayout;->updateLayout()V

    return-void
.end method

.method public setDrawableColor(I)V
    .locals 2

    .line 111
    iget-object v0, p0, Llayout/SearchResultItemLayout;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0247

    .line 112
    invoke-virtual {p0, v0}, Llayout/SearchResultItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/SearchResultItemLayout;->imageView:Landroid/widget/ImageView;

    .line 114
    :cond_0
    iput p1, p0, Llayout/SearchResultItemLayout;->imageColor:I

    .line 115
    iget-object v0, p0, Llayout/SearchResultItemLayout;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Llayout/SearchResultItemLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 116
    invoke-direct {p0}, Llayout/SearchResultItemLayout;->updateLayout()V

    return-void
.end method

.method public setString(I)V
    .locals 1

    .line 154
    invoke-virtual {p0}, Llayout/SearchResultItemLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Llayout/SearchResultItemLayout;->setString(Ljava/lang/String;)V

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 2

    .line 120
    iget-object v0, p0, Llayout/SearchResultItemLayout;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0a014b

    .line 121
    invoke-virtual {p0, v0}, Llayout/SearchResultItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/SearchResultItemLayout;->textView:Landroid/widget/TextView;

    .line 123
    :cond_0
    iput-object p1, p0, Llayout/SearchResultItemLayout;->string:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Llayout/SearchResultItemLayout;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Llayout/SearchResultItemLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-direct {p0}, Llayout/SearchResultItemLayout;->updateLayout()V

    return-void
.end method

.method public setSubString(Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Llayout/SearchResultItemLayout;->subTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0a04fa

    .line 147
    invoke-virtual {p0, v0}, Llayout/SearchResultItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/SearchResultItemLayout;->subTextView:Landroid/widget/TextView;

    .line 149
    :cond_0
    iput-object p1, p0, Llayout/SearchResultItemLayout;->subString:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Llayout/SearchResultItemLayout;->subTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-direct {p0}, Llayout/SearchResultItemLayout;->updateLayout()V

    return-void
.end method

.method public setTitleGone()V
    .locals 2

    .line 130
    iget-object v0, p0, Llayout/SearchResultItemLayout;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0a014b

    .line 131
    invoke-virtual {p0, v0}, Llayout/SearchResultItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/SearchResultItemLayout;->textView:Landroid/widget/TextView;

    .line 133
    :cond_0
    iget-object v0, p0, Llayout/SearchResultItemLayout;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-direct {p0}, Llayout/SearchResultItemLayout;->updateLayout()V

    return-void
.end method
