.class Lcom/instabug/survey/ui/SurveyActivity$e;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/SurveyActivity;->b(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Lcom/instabug/survey/ui/SurveyActivity;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/SurveyActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/SurveyActivity$e;->b:Lcom/instabug/survey/ui/SurveyActivity;

    iput-object p2, p0, Lcom/instabug/survey/ui/SurveyActivity$e;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$e;->b:Lcom/instabug/survey/ui/SurveyActivity;

    iget-object v1, p0, Lcom/instabug/survey/ui/SurveyActivity$e;->a:Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Lcom/instabug/survey/ui/SurveyActivity;->b(Lcom/instabug/survey/ui/SurveyActivity;Landroidx/fragment/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$e;->b:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$e;->b:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->finish()V

    .line 5
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$e;->b:Lcom/instabug/survey/ui/SurveyActivity;

    const-string v1, "Fragment couldn\'t save it\'s state"

    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
