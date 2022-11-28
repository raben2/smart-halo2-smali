.class Lcom/instabug/survey/e/a$b;
.super Ljava/lang/Object;
.source "AutoShowingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/e/a;->a(Lcom/instabug/survey/models/Survey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/models/Survey;

.field final synthetic b:Lcom/instabug/survey/e/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/e/a;Lcom/instabug/survey/models/Survey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/e/a$b;->b:Lcom/instabug/survey/e/a;

    iput-object p2, p0, Lcom/instabug/survey/e/a$b;->a:Lcom/instabug/survey/models/Survey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/survey/e/a$b;->b:Lcom/instabug/survey/e/a;

    iget-object v1, p0, Lcom/instabug/survey/e/a$b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/instabug/survey/e/a;->a(Lcom/instabug/survey/e/a;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/instabug/survey/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this survey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/instabug/survey/e/a$b;->a:Lcom/instabug/survey/models/Survey;

    .line 3
    invoke-virtual {v2}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is answered and outdated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getInstance()Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/instabug/library/tracking/InstabugInternalTrackingDelegate;->getTargetActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/survey/c;->h()V

    .line 13
    invoke-static {}, Lcom/instabug/survey/h/g;->b()V

    .line 15
    iget-object v1, p0, Lcom/instabug/survey/e/a$b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->isOptInSurvey()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/instabug/survey/e/a$b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getSurveyEvents()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/instabug/survey/e/a$b;->a:Lcom/instabug/survey/models/Survey;

    .line 16
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->getSurveyEvents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/instabug/survey/e/a$b;->a:Lcom/instabug/survey/models/Survey;

    .line 17
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->isLastEventDismiss()Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/instabug/survey/e/a$b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->clearAnswers()V

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/instabug/survey/e/a$b;->b:Lcom/instabug/survey/e/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/instabug/survey/e/a;->b(Z)V

    .line 21
    iget-object v1, p0, Lcom/instabug/survey/e/a$b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->addShowEvent()V

    .line 22
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instabug/survey/ui/SurveyActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    iget-object v2, p0, Lcom/instabug/survey/e/a$b;->a:Lcom/instabug/survey/models/Survey;

    const-string v3, "survey"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 24
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
