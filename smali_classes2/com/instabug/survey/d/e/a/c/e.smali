.class public Lcom/instabug/survey/d/e/a/c/e;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "WhatsNewPresenter.java"

# interfaces
.implements Lcom/instabug/survey/d/e/a/c/a;
.implements Lcom/instabug/survey/ui/g/b$b;
.implements Lcom/instabug/survey/ui/g/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/survey/d/e/a/c/b;",
        ">;",
        "Lcom/instabug/survey/d/e/a/c/a;",
        "Lcom/instabug/survey/ui/g/b$b;",
        "Lcom/instabug/survey/ui/g/a$a;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/GestureDetector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/survey/d/e/a/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/d/e/a/c/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/instabug/survey/d/e/a/c/b;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    .line 5
    invoke-static {p1, p2, p0}, Lcom/instabug/survey/ui/g/b;->a(Landroid/view/View;Landroid/view/MotionEvent;Lcom/instabug/survey/ui/g/b$b;)V

    .line 6
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/e;->a:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/instabug/survey/ui/g/a;

    invoke-direct {v1, p0}, Lcom/instabug/survey/ui/g/a;-><init>(Lcom/instabug/survey/ui/g/a$a;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instabug/survey/d/e/a/c/e;->a:Landroid/view/GestureDetector;

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/instabug/survey/d/e/a/c/e;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public a(Lcom/instabug/survey/d/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/d/e/a/c/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->j()V

    .line 4
    invoke-interface {v0, p1}, Lcom/instabug/survey/d/e/a/c/b;->a(Lcom/instabug/survey/d/c/c;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/d/e/a/c/e;->g()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/d/e/a/c/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/instabug/survey/d/e/a/c/b;->c()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
