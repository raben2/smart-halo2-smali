.class public Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;
.super Landroidx/cardview/widget/CardView;
.source "FiamCardView.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/internal/layout/BackButtonLayout;


# instance fields
.field private mBackHandler:Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;->mBackHandler:Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setDismissListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;-><init>(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/FiamCardView;->mBackHandler:Lcom/google/firebase/inappmessaging/display/internal/layout/util/BackButtonHandler;

    return-void
.end method
