.class Lcom/instabug/survey/ui/SurveyActivity$a;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/SurveyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/instabug/survey/ui/SurveyActivity;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/SurveyActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    iput-object p2, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getStartedActivitiesCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->finish()V

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    iget-boolean v0, v0, Lcom/instabug/survey/ui/SurveyActivity;->a:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->a:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-static {v0}, Lcom/instabug/survey/ui/SurveyActivity;->a(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    .line 9
    invoke-static {v0}, Lcom/instabug/survey/ui/SurveyActivity;->b(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/d;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    .line 10
    invoke-static {v0}, Lcom/instabug/survey/ui/SurveyActivity;->c(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/survey/models/Survey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    iget-object v1, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-static {v1}, Lcom/instabug/survey/ui/SurveyActivity;->c(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/survey/models/Survey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/survey/ui/SurveyActivity;->a(Lcom/instabug/survey/ui/SurveyActivity;Lcom/instabug/survey/models/Survey;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/ui/SurveyActivity$a;->b:Lcom/instabug/survey/ui/SurveyActivity;

    .line 14
    invoke-static {v1}, Lcom/instabug/survey/ui/SurveyActivity;->c(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/survey/models/Survey;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/instabug/survey/ui/c;->a(Landroidx/fragment/app/FragmentManager;Lcom/instabug/survey/models/Survey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Survey has not been shown due to this error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-class v1, Lcom/instabug/survey/ui/SurveyActivity;

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
