.class final Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;
.super Ljava/lang/Object;
.source "SHDialogHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V
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
.field final synthetic $cancelTextId:I

.field final synthetic $confirmTextId:I

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $descriptionId:I

.field final synthetic $onCancel:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

.field final synthetic $onConfirm:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

.field final synthetic $titleId:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$context:Landroid/content/Context;

    iput p2, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$titleId:I

    iput p3, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$descriptionId:I

    iput p4, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$confirmTextId:I

    iput p5, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$cancelTextId:I

    iput-object p6, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$onConfirm:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

    iput-object p7, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$onCancel:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 194
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$context:Landroid/content/Context;

    const v2, 0x7f120005

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 195
    iget-object v3, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$context:Landroid/content/Context;

    iget v4, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$titleId:I

    iget v5, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$descriptionId:I

    iget v6, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$confirmTextId:I

    iget v7, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$cancelTextId:I

    iget-object v8, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$onConfirm:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

    iget-object v9, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$4;->$onCancel:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

    invoke-static/range {v3 .. v9}, Lbike/smarthalo/app/helpers/SHDialogHelper;->createConfirmationDialog(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
