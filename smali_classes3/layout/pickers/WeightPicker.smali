.class public final Llayout/pickers/WeightPicker;
.super Ljava/lang/Object;
.source "WeightPicker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JJ\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182!\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00120\u001aH\u0007\u00a2\u0006\u0002\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\u00a8\u0006\u001f"
    }
    d2 = {
        "Llayout/pickers/WeightPicker;",
        "",
        "()V",
        "DEFAULT_KILOGRAMS",
        "",
        "getDEFAULT_KILOGRAMS",
        "()I",
        "DEFAULT_POUNDS",
        "getDEFAULT_POUNDS",
        "MAXIMUM_KILOGRAMS",
        "getMAXIMUM_KILOGRAMS",
        "MAXIMUM_POUNDS",
        "getMAXIMUM_POUNDS",
        "MINIMUM_KILOGRAMS",
        "getMINIMUM_KILOGRAMS",
        "MINIMUM_POUNDS",
        "getMINIMUM_POUNDS",
        "pickWeight",
        "",
        "context",
        "Landroid/content/Context;",
        "isMetric",
        "",
        "currentWeight",
        "",
        "onValuesPicked",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "kilograms",
        "(Landroid/content/Context;ZLjava/lang/Double;Lkotlin/jvm/functions/Function1;)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final DEFAULT_KILOGRAMS:I = 0x3c

# The value of this static final field might be set in the static constructor
.field private static final DEFAULT_POUNDS:I = 0x8c

.field public static final INSTANCE:Llayout/pickers/WeightPicker;

# The value of this static final field might be set in the static constructor
.field private static final MAXIMUM_KILOGRAMS:I = 0xc8

# The value of this static final field might be set in the static constructor
.field private static final MAXIMUM_POUNDS:I = 0x1f4

# The value of this static final field might be set in the static constructor
.field private static final MINIMUM_KILOGRAMS:I = 0x19

# The value of this static final field might be set in the static constructor
.field private static final MINIMUM_POUNDS:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Llayout/pickers/WeightPicker;

    invoke-direct {v0}, Llayout/pickers/WeightPicker;-><init>()V

    sput-object v0, Llayout/pickers/WeightPicker;->INSTANCE:Llayout/pickers/WeightPicker;

    const/16 v0, 0x32

    .line 17
    sput v0, Llayout/pickers/WeightPicker;->MINIMUM_POUNDS:I

    const/16 v0, 0x1f4

    .line 18
    sput v0, Llayout/pickers/WeightPicker;->MAXIMUM_POUNDS:I

    const/16 v0, 0x8c

    .line 19
    sput v0, Llayout/pickers/WeightPicker;->DEFAULT_POUNDS:I

    const/16 v0, 0x19

    .line 21
    sput v0, Llayout/pickers/WeightPicker;->MINIMUM_KILOGRAMS:I

    const/16 v0, 0xc8

    .line 22
    sput v0, Llayout/pickers/WeightPicker;->MAXIMUM_KILOGRAMS:I

    const/16 v0, 0x3c

    .line 23
    sput v0, Llayout/pickers/WeightPicker;->DEFAULT_KILOGRAMS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final pickWeight(Landroid/content/Context;ZLjava/lang/Double;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/Double;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValuesPicked"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout_inflater"

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0108

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string v1, "rootLayout"

    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lbike/smarthalo/app/R$id;->metricUnit1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "rootLayout.metricUnit1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f11000b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget v1, Lbike/smarthalo/app/R$id;->metricPicker1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    const-string v2, "rootLayout.metricPicker1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Llayout/pickers/WeightPicker;->MINIMUM_KILOGRAMS:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 38
    sget v1, Lbike/smarthalo/app/R$id;->metricPicker1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    const-string v2, "rootLayout.metricPicker1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Llayout/pickers/WeightPicker;->MAXIMUM_KILOGRAMS:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 40
    sget v1, Lbike/smarthalo/app/R$id;->metricPicker1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    const-string v2, "rootLayout.metricPicker1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p2, v2

    goto :goto_0

    .line 41
    :cond_0
    sget p2, Llayout/pickers/WeightPicker;->DEFAULT_KILOGRAMS:I

    .line 40
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_2

    :cond_1
    const-string v1, "rootLayout"

    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lbike/smarthalo/app/R$id;->metricUnit1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "rootLayout.metricUnit1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f110010

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    sget v1, Lbike/smarthalo/app/R$id;->metricPicker1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    const-string v2, "rootLayout.metricPicker1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Llayout/pickers/WeightPicker;->MINIMUM_POUNDS:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 46
    sget v1, Lbike/smarthalo/app/R$id;->metricPicker1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    const-string v2, "rootLayout.metricPicker1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Llayout/pickers/WeightPicker;->MAXIMUM_POUNDS:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 48
    sget v1, Lbike/smarthalo/app/R$id;->metricPicker1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    const-string v2, "rootLayout.metricPicker1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-static {p2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->kilogramsToPounds(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object p2

    const-string v2, "SHConversionHelper.kilog\u2026msToPounds(currentWeight)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p2, v2

    goto :goto_1

    .line 49
    :cond_2
    sget p2, Llayout/pickers/WeightPicker;->DEFAULT_POUNDS:I

    .line 48
    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 52
    :goto_2
    new-instance p2, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f1202b7

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f1100f5

    .line 53
    new-instance v1, Llayout/pickers/WeightPicker$pickWeight$1;

    invoke-direct {v1, p1, v0, p3}, Llayout/pickers/WeightPicker$pickWeight$1;-><init>(ZLandroid/view/View;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p2, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 31
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getDEFAULT_KILOGRAMS()I
    .locals 1

    .line 23
    sget v0, Llayout/pickers/WeightPicker;->DEFAULT_KILOGRAMS:I

    return v0
.end method

.method public final getDEFAULT_POUNDS()I
    .locals 1

    .line 19
    sget v0, Llayout/pickers/WeightPicker;->DEFAULT_POUNDS:I

    return v0
.end method

.method public final getMAXIMUM_KILOGRAMS()I
    .locals 1

    .line 22
    sget v0, Llayout/pickers/WeightPicker;->MAXIMUM_KILOGRAMS:I

    return v0
.end method

.method public final getMAXIMUM_POUNDS()I
    .locals 1

    .line 18
    sget v0, Llayout/pickers/WeightPicker;->MAXIMUM_POUNDS:I

    return v0
.end method

.method public final getMINIMUM_KILOGRAMS()I
    .locals 1

    .line 21
    sget v0, Llayout/pickers/WeightPicker;->MINIMUM_KILOGRAMS:I

    return v0
.end method

.method public final getMINIMUM_POUNDS()I
    .locals 1

    .line 17
    sget v0, Llayout/pickers/WeightPicker;->MINIMUM_POUNDS:I

    return v0
.end method
