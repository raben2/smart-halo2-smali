.class public Lcom/instabug/survey/ui/h/a$e;
.super Ljava/lang/Object;
.source "CustomQuestionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/survey/ui/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Lcom/instabug/survey/ui/h/a$f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instabug/survey/ui/h/a$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/instabug/survey/ui/h/a$e;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 2
    iput p1, p0, Lcom/instabug/survey/ui/h/a$e;->c:I

    return-object p0
.end method

.method public a(Lcom/instabug/survey/ui/h/a$f;)Lcom/instabug/survey/ui/h/a$e;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/instabug/survey/ui/h/a$e;->f:Lcom/instabug/survey/ui/h/a$f;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/instabug/survey/ui/h/a$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/h/a$e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/h/a$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 6
    iget v2, p0, Lcom/instabug/survey/ui/h/a$e;->c:I

    iget-object v3, p0, Lcom/instabug/survey/ui/h/a$e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/instabug/survey/ui/h/a$e;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/instabug/survey/ui/h/a$e;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/instabug/survey/ui/h/a$e;->f:Lcom/instabug/survey/ui/h/a$f;

    invoke-static/range {v1 .. v6}, Lcom/instabug/survey/ui/h/a;->a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/instabug/survey/ui/h/a$f;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/instabug/survey/ui/h/a$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/h/a$e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/instabug/survey/ui/h/a$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/h/a$e;->e:Ljava/lang/String;

    return-object p0
.end method
