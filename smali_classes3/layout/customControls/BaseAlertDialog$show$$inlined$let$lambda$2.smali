.class final Llayout/customControls/BaseAlertDialog$show$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "BaseAlertDialog.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/customControls/BaseAlertDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "layout/customControls/BaseAlertDialog$show$7$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $alertDialog$inlined:Landroid/app/AlertDialog;

.field final synthetic $confirmTextResource$inlined:Ljava/lang/CharSequence;

.field final synthetic $onConfirm$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $rootLayout$inlined:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Llayout/customControls/BaseAlertDialog$show$$inlined$let$lambda$2;->$rootLayout$inlined:Landroid/view/View;

    iput-object p2, p0, Llayout/customControls/BaseAlertDialog$show$$inlined$let$lambda$2;->$confirmTextResource$inlined:Ljava/lang/CharSequence;

    iput-object p3, p0, Llayout/customControls/BaseAlertDialog$show$$inlined$let$lambda$2;->$onConfirm$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Llayout/customControls/BaseAlertDialog$show$$inlined$let$lambda$2;->$alertDialog$inlined:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Llayout/customControls/BaseAlertDialog$show$$inlined$let$lambda$2;->$onConfirm$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Llayout/customControls/BaseAlertDialog$show$$inlined$let$lambda$2;->$alertDialog$inlined:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
