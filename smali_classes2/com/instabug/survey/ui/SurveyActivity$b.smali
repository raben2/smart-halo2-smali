.class Lcom/instabug/survey/ui/SurveyActivity$b;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/SurveyActivity;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/ui/SurveyActivity;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/SurveyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/SurveyActivity$b;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$b;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "THANKS_FRAGMENT"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/survey/ui/SurveyActivity$b;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-static {v1, v0}, Lcom/instabug/survey/ui/SurveyActivity;->a(Lcom/instabug/survey/ui/SurveyActivity;Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method
