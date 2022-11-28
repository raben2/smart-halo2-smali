.class public Lcom/instabug/survey/h/i;
.super Ljava/lang/Object;
.source "TextSizeCalculator.java"


# direct methods
.method public static a(Landroid/widget/TextView;)V
    .locals 8
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/device/InstabugDeviceProperties;->isTablet(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x41900000    # 18.0f

    const/4 v2, 0x4

    const v3, 0x3f99999a    # 1.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 4
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x96

    if-le v0, v6, :cond_1

    const/high16 v0, 0x41700000    # 15.0f

    .line 7
    invoke-virtual {p0, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x3f8ccccd    # 1.1f

    .line 8
    invoke-virtual {p0, v4, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v7, 0x64

    if-le v0, v7, :cond_2

    const/high16 v0, 0x41800000    # 16.0f

    .line 11
    invoke-virtual {p0, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 12
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 13
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_3

    .line 15
    new-instance v0, Lcom/instabug/survey/h/i$a;

    invoke-direct {v0, p0}, Lcom/instabug/survey/h/i$a;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {p0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 32
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method
