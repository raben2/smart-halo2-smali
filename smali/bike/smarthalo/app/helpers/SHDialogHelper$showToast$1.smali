.class final Lbike/smarthalo/app/helpers/SHDialogHelper$showToast$1;
.super Ljava/lang/Object;
.source "SHDialogHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
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

.field final synthetic $textResourceId:I

.field final synthetic $toastLength:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showToast$1;->$context:Landroid/content/Context;

    iput p2, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showToast$1;->$textResourceId:I

    iput p3, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showToast$1;->$toastLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 112
    iget-object v0, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showToast$1;->$context:Landroid/content/Context;

    iget v1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showToast$1;->$textResourceId:I

    iget v2, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showToast$1;->$toastLength:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
