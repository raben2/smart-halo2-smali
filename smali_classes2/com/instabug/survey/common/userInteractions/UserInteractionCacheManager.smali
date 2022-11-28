.class public Lcom/instabug/survey/common/userInteractions/UserInteractionCacheManager;
.super Ljava/lang/Object;
.source "UserInteractionCacheManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteBulkOfUserInteractions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/survey/e/c/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/survey/common/userInteractions/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public static deleteUserInteraction(JLjava/lang/String;I)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/instabug/survey/common/userInteractions/a;->a(Ljava/lang/Long;Ljava/lang/String;I)V

    return-void
.end method

.method public static insertUserInteraction(Lcom/instabug/survey/e/c/e;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lcom/instabug/survey/e/c/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/instabug/survey/e/c/e;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/instabug/survey/e/c/e;->getUserInteraction()Lcom/instabug/survey/e/c/i;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/instabug/survey/e/c/e;->getSurveyId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/e/c/i;->c(J)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/c/i;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/instabug/survey/common/userInteractions/a;->b(Lcom/instabug/survey/e/c/i;)J

    return-void
.end method

.method public static insertUserInteractions(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/instabug/survey/e/c/e;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/e/c/e;

    .line 3
    invoke-interface {v1}, Lcom/instabug/survey/e/c/e;->getUserInteraction()Lcom/instabug/survey/e/c/i;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Lcom/instabug/survey/e/c/e;->getSurveyId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instabug/survey/e/c/i;->c(J)V

    .line 5
    invoke-virtual {v2, p1}, Lcom/instabug/survey/e/c/i;->a(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/instabug/survey/common/userInteractions/a;->b(Ljava/util/List;)V

    return-void
.end method

.method public static retrieveUserInteraction(JLjava/lang/String;I)Lcom/instabug/survey/e/c/i;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/instabug/survey/common/userInteractions/a;->b(Ljava/lang/Long;Ljava/lang/String;I)Lcom/instabug/survey/e/c/i;

    move-result-object p0

    return-object p0
.end method

.method public static updateUserInteraction(Lcom/instabug/survey/e/c/e;Ljava/lang/String;)V
    .locals 3
    .param p0    # Lcom/instabug/survey/e/c/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/instabug/survey/e/c/e;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/instabug/survey/e/c/e;->getUserInteraction()Lcom/instabug/survey/e/c/i;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/instabug/survey/e/c/e;->getSurveyId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/e/c/i;->c(J)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/instabug/survey/e/c/i;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/instabug/survey/common/userInteractions/a;->d(Lcom/instabug/survey/e/c/i;)J

    return-void
.end method
