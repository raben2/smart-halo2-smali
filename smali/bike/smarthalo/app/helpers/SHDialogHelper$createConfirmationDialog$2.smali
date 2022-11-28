.class final Lbike/smarthalo/app/helpers/SHDialogHelper$createConfirmationDialog$2;
.super Ljava/lang/Object;
.source "SHDialogHelper.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/helpers/SHDialogHelper;->createConfirmationDialog(Landroid/content/Context;IIIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)Landroidx/appcompat/app/AlertDialog;
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
.field final synthetic $onCancel:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$createConfirmationDialog$2;->$onCancel:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 285
    iget-object p1, p0, Lbike/smarthalo/app/helpers/SHDialogHelper$createConfirmationDialog$2;->$onCancel:Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;->onClick()V

    :cond_0
    return-void
.end method
