.class Lcom/instabug/survey/ui/i/b$f;
.super Ljava/lang/Object;
.source "SurveyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/i/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/ui/i/b;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/i/b$f;->a:Lcom/instabug/survey/ui/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$f;->a:Lcom/instabug/survey/ui/i/b;

    iget-object v1, v0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$f;->a:Lcom/instabug/survey/ui/i/b;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/b;->d(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/library/ui/custom/InstabugViewPager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$f;->a:Lcom/instabug/survey/ui/i/b;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/LocaleHelper;->isRTL(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$f;->a:Lcom/instabug/survey/ui/i/b;

    iget-object v0, v0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/instabug/survey/ui/i/b$f;->a:Lcom/instabug/survey/ui/i/b;

    invoke-static {v2}, Lcom/instabug/survey/ui/i/b;->a(Lcom/instabug/survey/ui/i/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$f;->a:Lcom/instabug/survey/ui/i/b;

    iget-object v0, v0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    .line 5
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/instabug/survey/ui/i/b$f;->a:Lcom/instabug/survey/ui/i/b;

    invoke-static {v2}, Lcom/instabug/survey/ui/i/b;->a(Lcom/instabug/survey/ui/i/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$f;->a:Lcom/instabug/survey/ui/i/b;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/b;->d(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/library/ui/custom/InstabugViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->scrollForward(Z)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$f;->a:Lcom/instabug/survey/ui/i/b;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/b;->d(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/library/ui/custom/InstabugViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->scrollBackward(Z)V

    :cond_2
    :goto_0
    return-void
.end method
