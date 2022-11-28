.class final Llayout/customControls/DeviceIdAlertDialog$show$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DeviceIdAlertDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/customControls/DeviceIdAlertDialog;->show(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $deviceID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Llayout/customControls/DeviceIdAlertDialog$show$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Llayout/customControls/DeviceIdAlertDialog$show$1;->$deviceID:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Llayout/customControls/DeviceIdAlertDialog$show$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 26
    iget-object v0, p0, Llayout/customControls/DeviceIdAlertDialog$show$1;->$context:Landroid/content/Context;

    const v1, 0x7f1100ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026ormation_prompt_label_id)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Llayout/customControls/DeviceIdAlertDialog$show$1;->$deviceID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/helpers/ClipboardHelper;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Llayout/customControls/DeviceIdAlertDialog$show$1;->$context:Landroid/content/Context;

    const v1, 0x7f1100ab

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    return-void
.end method
