.class public Lcom/instabug/survey/h/b;
.super Ljava/lang/Object;
.source "FrequencyProcessor.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(JJ)I
    .locals 1

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr p3, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method a(Lcom/instabug/survey/models/Survey;)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getDismissedAt()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/instabug/survey/h/b;->a(JJ)I

    move-result p1

    .line 3
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/b;->g()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method b(Lcom/instabug/survey/models/Survey;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getTarget()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->d()Lcom/instabug/survey/e/c/d;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/instabug/survey/e/c/d;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isAnswered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isLastEventDismiss()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/instabug/survey/e/c/d;->a()I

    move-result v1

    .line 10
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getShownAt()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/instabug/survey/h/b;->a(JJ)I

    move-result p1

    .line 11
    invoke-virtual {v0}, Lcom/instabug/survey/e/c/d;->b()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-lt p1, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method c(Lcom/instabug/survey/models/Survey;)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getDismissedAt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/b;->d(Lcom/instabug/survey/models/Survey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isAnswered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->shouldShowAgain()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method d(Lcom/instabug/survey/models/Survey;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/b;->e(Lcom/instabug/survey/models/Survey;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/b;->a(Lcom/instabug/survey/models/Survey;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method e(Lcom/instabug/survey/models/Survey;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getSessionCounter()I

    move-result p1

    .line 2
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/b;->h()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method f(Lcom/instabug/survey/models/Survey;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/b;->c(Lcom/instabug/survey/models/Survey;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instabug/survey/h/b;->b(Lcom/instabug/survey/models/Survey;)Z

    move-result p1

    return p1
.end method
