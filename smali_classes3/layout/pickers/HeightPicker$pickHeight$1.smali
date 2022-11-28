.class final Llayout/pickers/HeightPicker$pickHeight$1;
.super Ljava/lang/Object;
.source "HeightPicker.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/pickers/HeightPicker;->pickHeight(Landroid/content/Context;ZLjava/lang/Integer;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "which",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $isMetric:Z

.field final synthetic $onValuesPicked:Lkotlin/jvm/functions/Function1;

.field final synthetic $rootLayout:Landroid/view/View;


# direct methods
.method constructor <init>(ZLandroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-boolean p1, p0, Llayout/pickers/HeightPicker$pickHeight$1;->$isMetric:Z

    iput-object p2, p0, Llayout/pickers/HeightPicker$pickHeight$1;->$rootLayout:Landroid/view/View;

    iput-object p3, p0, Llayout/pickers/HeightPicker$pickHeight$1;->$onValuesPicked:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 84
    iget-boolean p1, p0, Llayout/pickers/HeightPicker$pickHeight$1;->$isMetric:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Llayout/pickers/HeightPicker$pickHeight$1;->$rootLayout:Landroid/view/View;

    const-string p2, "rootLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lbike/smarthalo/app/R$id;->metricPicker1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/NumberPicker;

    const-string p2, "rootLayout.metricPicker1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    int-to-double p1, p1

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Llayout/pickers/HeightPicker$pickHeight$1;->$rootLayout:Landroid/view/View;

    const-string p2, "rootLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lbike/smarthalo/app/R$id;->metricPicker1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/NumberPicker;

    const-string p2, "rootLayout.metricPicker1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->feetToMeters(Ljava/lang/Double;)D

    move-result-wide p1

    .line 88
    :goto_0
    iget-boolean v0, p0, Llayout/pickers/HeightPicker$pickHeight$1;->$isMetric:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Llayout/pickers/HeightPicker$pickHeight$1;->$rootLayout:Landroid/view/View;

    const-string v1, "rootLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lbike/smarthalo/app/R$id;->metricPicker2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    const-string v1, "rootLayout.metricPicker2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    int-to-double v0, v0

    goto :goto_1

    .line 89
    :cond_1
    iget-object v0, p0, Llayout/pickers/HeightPicker$pickHeight$1;->$rootLayout:Landroid/view/View;

    const-string v1, "rootLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lbike/smarthalo/app/R$id;->metricPicker2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    const-string v1, "rootLayout.metricPicker2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->inchesToCentimeters(Ljava/lang/Integer;)I

    move-result v0

    int-to-double v0, v0

    .line 91
    :goto_1
    iget-object v2, p0, Llayout/pickers/HeightPicker$pickHeight$1;->$onValuesPicked:Lkotlin/jvm/functions/Function1;

    const/16 v3, 0x64

    int-to-double v3, v3

    mul-double p1, p1, v3

    add-double/2addr p1, v0

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
