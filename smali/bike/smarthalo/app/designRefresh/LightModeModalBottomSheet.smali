.class public final Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet;
.super Ljava/lang/Object;
.source "ModalBottomSheet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet;",
        "",
        "()V",
        "showPicker",
        "",
        "context",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet;

    invoke-direct {v0}, Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet;-><init>()V

    sput-object v0, Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet;->INSTANCE:Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final showPicker(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout_inflater"

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0112

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v2, 0x7f1200e2

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const-string p0, "rootLayout"

    .line 27
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lbike/smarthalo/app/R$id;->lightModeNormal:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance v2, Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet$showPicker$1;

    invoke-direct {v2, v1}, Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet$showPicker$1;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    sget p0, Lbike/smarthalo/app/R$id;->lightModeBlink:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance v2, Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet$showPicker$2;

    invoke-direct {v2, v1}, Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet$showPicker$2;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    sget p0, Lbike/smarthalo/app/R$id;->lightModeStrobe:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance v0, Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet$showPicker$3;

    invoke-direct {v0, v1}, Lbike/smarthalo/app/designRefresh/LightModeModalBottomSheet$showPicker$3;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    return-void

    .line 21
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
