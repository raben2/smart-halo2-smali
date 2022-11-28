.class Lcom/instabug/apm/f/d/d$a;
.super Ljava/lang/Object;
.source "SessionHandlerImpl.java"

# interfaces
.implements Lcom/instabug/library/internal/utils/stability/execution/Executable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/apm/f/d/d;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instabug/apm/f/d/d;


# direct methods
.method constructor <init>(Lcom/instabug/apm/f/d/d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    iput p2, p0, Lcom/instabug/apm/f/d/d$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v1}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v1}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/apm/b/b/d;->getStartNanoTime()J

    move-result-wide v1

    .line 3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v12

    .line 4
    new-instance v1, Lcom/instabug/apm/b/b/d;

    iget-object v2, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v2}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/d;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    .line 5
    invoke-static {v2}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/d;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    .line 6
    invoke-static {v2}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/d;->getOs()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    .line 7
    invoke-static {v2}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/d;->getAppVersion()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    .line 8
    invoke-static {v2}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/d;->getUuid()Ljava/lang/String;

    move-result-object v11

    iget-object v2, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    .line 9
    invoke-static {v2}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/d;->getStartTimestampMicros()J

    move-result-wide v14

    iget-object v2, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    .line 10
    invoke-static {v2}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/b/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/apm/b/b/d;->getStartNanoTime()J

    move-result-wide v16

    iget v2, v0, Lcom/instabug/apm/f/d/d$a;->a:I

    const/16 v19, -0x1

    move-object v6, v1

    move/from16 v18, v2

    invoke-direct/range {v6 .. v19}, Lcom/instabug/apm/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJII)V

    .line 13
    iget-object v2, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;Lcom/instabug/apm/b/b/d;)Lcom/instabug/apm/b/b/d;

    .line 14
    iget-object v2, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v2, v3}, Lcom/instabug/apm/f/d/d;->a(Lcom/instabug/apm/f/d/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 15
    iget-object v2, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v2}, Lcom/instabug/apm/f/d/d;->c(Lcom/instabug/apm/f/d/d;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/instabug/apm/f/d/d$a$a;

    invoke-direct {v3, v0, v1}, Lcom/instabug/apm/f/d/d$a$a;-><init>(Lcom/instabug/apm/f/d/d$a;Lcom/instabug/apm/b/b/d;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, v0, Lcom/instabug/apm/f/d/d$a;->b:Lcom/instabug/apm/f/d/d;

    invoke-static {v1}, Lcom/instabug/apm/f/d/d;->d(Lcom/instabug/apm/f/d/d;)Lcom/instabug/apm/logger/a/a;

    move-result-object v1

    const-string v2, "Attempted to end session without calling start"

    invoke-virtual {v1, v2}, Lcom/instabug/apm/logger/a/a;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
