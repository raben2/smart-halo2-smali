.class public Lcom/instabug/apm/f/a/b;
.super Ljava/lang/Object;
.source "AppLaunchesHandlerImpl.java"

# interfaces
.implements Lcom/instabug/apm/f/a/a;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field private a:Lcom/instabug/apm/b/a/a/a;

.field private b:Lcom/instabug/apm/b/a/d/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/instabug/apm/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->g()Lcom/instabug/apm/b/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/a/b;->a:Lcom/instabug/apm/b/a/a/a;

    .line 4
    invoke-static {}, Lcom/instabug/apm/e/a;->E()Lcom/instabug/apm/b/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/a/b;->b:Lcom/instabug/apm/b/a/d/c;

    .line 5
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/a/b;->c:Lcom/instabug/apm/c/c;

    return-void
.end method

.method private a(Ljava/lang/String;J)I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/instabug/apm/f/a/b;->a:Lcom/instabug/apm/b/a/a/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/instabug/apm/b/a/a/a;->a(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/instabug/apm/b/b/b;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/a/b;->a:Lcom/instabug/apm/b/a/a/a;

    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/b/a/a/a;->a(Ljava/lang/String;Lcom/instabug/apm/b/b/b;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/instabug/apm/f/a/b;->b:Lcom/instabug/apm/b/a/d/c;

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-interface {p2, p1, v2}, Lcom/instabug/apm/b/a/d/c;->a(Ljava/lang/String;I)V

    .line 5
    iget-object p2, p0, Lcom/instabug/apm/f/a/b;->c:Lcom/instabug/apm/c/c;

    invoke-interface {p2}, Lcom/instabug/apm/c/c;->m()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/instabug/apm/f/a/b;->a(Ljava/lang/String;J)I

    move-result p2

    if-lez p2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/instabug/apm/f/a/b;->b:Lcom/instabug/apm/b/a/d/c;

    invoke-interface {v2, p1, p2}, Lcom/instabug/apm/b/a/d/c;->f(Ljava/lang/String;I)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/instabug/apm/f/a/b;->c:Lcom/instabug/apm/c/c;

    invoke-interface {p1}, Lcom/instabug/apm/c/c;->a()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/instabug/apm/f/a/b;->a(J)V

    :cond_1
    return-wide v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/apm/b/b/b;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/instabug/apm/f/a/b;->a:Lcom/instabug/apm/b/a/a/a;

    invoke-interface {v0, p1}, Lcom/instabug/apm/b/a/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/instabug/apm/f/a/b;->a:Lcom/instabug/apm/b/a/a/a;

    invoke-interface {v0}, Lcom/instabug/apm/b/a/a/a;->a()V

    .line 15
    iget-object v0, p0, Lcom/instabug/apm/f/a/b;->b:Lcom/instabug/apm/b/a/d/c;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Lcom/instabug/apm/b/a/d/c;->b()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/instabug/apm/f/a/b;->a:Lcom/instabug/apm/b/a/a/a;

    invoke-interface {v0, p1, p2}, Lcom/instabug/apm/b/a/a/a;->a(J)V

    return-void
.end method
