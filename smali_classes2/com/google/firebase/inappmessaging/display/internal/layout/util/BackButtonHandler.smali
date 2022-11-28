.class public Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;
.super Ljava/lang/Object;
.source "BackButtonHandler.java"


# instance fields
.field private listener:Landroid/view/View$OnClickListener;

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;->viewGroup:Landroid/view/ViewGroup;

    .line 30
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 40
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;->listener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;->viewGroup:Landroid/view/ViewGroup;

    invoke-interface {p1, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
