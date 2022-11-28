.class final Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;
.super Ljava/lang/Object;
.source "SHDialogHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/helpers/SHDialogHelper;->showHtmlConfirmationDialog(Landroid/content/Context;Ljava/lang/String;IILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V
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

.field final synthetic $description:Ljava/lang/String;

.field final synthetic $onConfirm:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;I)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;->$description:Ljava/lang/String;

    iput p3, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;->$confirmTextId:I

    iput-object p4, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;->$onConfirm:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

    iput p5, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;->$cancelTextId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 178
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;->$context:Landroid/content/Context;

    const v2, 0x7f120005

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 180
    iget-object v1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;->$description:Ljava/lang/String;

    invoke-static {v1}, Lbike/smarthalo/app/helpers/HtmlHelper;->getHtmlString(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 181
    iget v1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;->$confirmTextId:I

    new-instance v2, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1$1;-><init>(Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;)V

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 184
    iget v1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$showHtmlConfirmationDialog$1;->$cancelTextId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
