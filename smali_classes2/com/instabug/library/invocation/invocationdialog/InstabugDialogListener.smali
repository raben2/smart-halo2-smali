.class public Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;
.super Ljava/lang/Object;
.source "InstabugDialogListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener$InstabugDialogCallbacks;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;


# instance fields
.field private callbacks:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener$InstabugDialogCallbacks;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;->INSTANCE:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;

    invoke-direct {v0}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;-><init>()V

    sput-object v0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;->INSTANCE:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onDialogItemClick(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;->callbacks:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener$InstabugDialogCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener$InstabugDialogCallbacks;->onClick(ILjava/lang/String;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener$InstabugDialogCallbacks;)V
    .locals 0
    .param p1    # Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener$InstabugDialogCallbacks;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener;->callbacks:Lcom/instabug/library/invocation/invocationdialog/InstabugDialogListener$InstabugDialogCallbacks;

    return-void
.end method
