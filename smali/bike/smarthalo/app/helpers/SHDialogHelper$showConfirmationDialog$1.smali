.class final Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;
.super Ljava/lang/Object;
.source "SHDialogHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V
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

.field final synthetic $onConfirm:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;


# direct methods
.method constructor <init>(Landroid/content/Context;IILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;I)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;->$context:Landroid/content/Context;

    iput p2, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;->$descriptionId:I

    iput p3, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;->$confirmTextId:I

    iput-object p4, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;->$onConfirm:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

    iput p5, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;->$cancelTextId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 150
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;->$context:Landroid/content/Context;

    const v2, 0x7f120005

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 152
    iget v1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;->$descriptionId:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    iget v1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;->$confirmTextId:I

    new-instance v2, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1$1;-><init>(Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 154
    iget v1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1;->$cancelTextId:I

    sget-object v2, Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1$2;->INSTANCE:Lbike/smarthalo/app/helpers/SHDialogHelper$showConfirmationDialog$1$2;

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
