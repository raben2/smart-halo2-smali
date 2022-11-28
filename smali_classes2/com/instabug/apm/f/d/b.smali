.class public Lcom/instabug/apm/f/d/b;
.super Ljava/lang/Object;
.source "APMUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lcom/instabug/apm/c/c;

.field private c:Lcom/instabug/apm/f/d/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->b()Lcom/instabug/apm/c/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/d/b;->b:Lcom/instabug/apm/c/c;

    .line 3
    invoke-static {}, Lcom/instabug/apm/e/a;->C()Lcom/instabug/apm/f/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/d/b;->c:Lcom/instabug/apm/f/d/c;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/f/d/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/f/d/b;->b:Lcom/instabug/apm/c/c;

    invoke-interface {v0}, Lcom/instabug/apm/c/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/f/d/b;->c:Lcom/instabug/apm/f/d/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instabug/apm/f/d/c;->b(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/apm/f/d/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
