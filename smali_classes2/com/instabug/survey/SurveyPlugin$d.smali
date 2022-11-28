.class Lcom/instabug/survey/SurveyPlugin$d;
.super Ljava/lang/Object;
.source "SurveyPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/SurveyPlugin;->startSubmittingPendingSurveys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instabug/survey/SurveyPlugin;


# direct methods
.method constructor <init>(Lcom/instabug/survey/SurveyPlugin;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/SurveyPlugin$d;->b:Lcom/instabug/survey/SurveyPlugin;

    iput-object p2, p0, Lcom/instabug/survey/SurveyPlugin$d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getReadyToSendSurveys()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/instabug/survey/SurveyPlugin$d;->b:Lcom/instabug/survey/SurveyPlugin;

    invoke-static {v1}, Lcom/instabug/survey/SurveyPlugin;->access$800(Lcom/instabug/survey/SurveyPlugin;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/SurveyPlugin$d;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instabug/survey/SurveyPlugin$d;->a:Landroid/content/Context;

    const-class v2, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    iget-object v1, p0, Lcom/instabug/survey/SurveyPlugin$d;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
