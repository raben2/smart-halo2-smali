.class public Lcom/instabug/featuresrequest/g/g;
.super Ljava/lang/Object;
.source "StatusBinder.java"


# direct methods
.method public static a(Lcom/instabug/featuresrequest/d/b$a;Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/g/g$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 19
    :pswitch_0
    sget p0, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_status_maybe_later:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    .line 20
    sget p0, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_maybe_later:I

    invoke-static {p1, p2, p3, p0}, Lcom/instabug/featuresrequest/g/g;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;I)V

    goto :goto_0

    .line 21
    :pswitch_1
    sget p0, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_status_open:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    .line 22
    sget p0, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_planned:I

    invoke-static {p1, p2, p3, p0}, Lcom/instabug/featuresrequest/g/g;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;I)V

    goto :goto_0

    .line 23
    :pswitch_2
    sget p0, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_status_planned:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    .line 24
    sget p0, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_planned:I

    invoke-static {p1, p2, p3, p0}, Lcom/instabug/featuresrequest/g/g;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;I)V

    goto :goto_0

    .line 25
    :pswitch_3
    sget p0, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_status_inprogress:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    .line 26
    sget p0, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_in_progress:I

    invoke-static {p1, p2, p3, p0}, Lcom/instabug/featuresrequest/g/g;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;I)V

    goto :goto_0

    .line 27
    :pswitch_4
    sget p0, Lcom/instabug/featuresrequest/R$string;->ib_feature_rq_status_completed:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    .line 28
    sget p0, Lcom/instabug/featuresrequest/R$color;->ib_fr_color_completed:I

    invoke-static {p1, p2, p3, p0}, Lcom/instabug/featuresrequest/g/g;->a(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;I)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 29
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/instabug/featuresrequest/g/b;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/instabug/featuresrequest/g/b;->a(Landroid/view/View;I)V

    :goto_0
    return-void
.end method
