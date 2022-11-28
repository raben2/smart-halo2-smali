.class Lcom/instabug/survey/ui/i/b$c;
.super Ljava/lang/Object;
.source "SurveyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/i/b;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/instabug/survey/ui/i/b;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/i/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    iput p2, p0, Lcom/instabug/survey/ui/i/b$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/b;->b(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/survey/ui/i/g/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    iget-object v1, v0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/instabug/survey/ui/i/b;->b(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/survey/ui/i/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/ui/i/g/a;->getCount()I

    move-result v0

    iget v1, p0, Lcom/instabug/survey/ui/i/b$c;->a:I

    if-le v0, v1, :cond_3

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/b;->b(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/survey/ui/i/g/a;

    move-result-object v0

    iget v1, p0, Lcom/instabug/survey/ui/i/b$c;->a:I

    invoke-virtual {v0, v1}, Lcom/instabug/survey/ui/i/g/a;->getItem(I)Lcom/instabug/survey/ui/i/a;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/instabug/survey/ui/i/l/a;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/instabug/survey/ui/i/l/a;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/i/l/a;->i()V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    iget-object v0, v0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->isStoreRatingSurvey()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    iget-object v0, v0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    .line 11
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/instabug/survey/ui/i/b$c;->a:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    iget-object v0, v0, Lcom/instabug/survey/ui/i/b;->a:Lcom/instabug/survey/models/Survey;

    .line 12
    invoke-virtual {v0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/instabug/survey/ui/i/b$c;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    invoke-virtual {v0}, Lcom/instabug/survey/models/b;->f()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    .line 13
    invoke-static {v0}, Lcom/instabug/survey/ui/i/b;->c(Lcom/instabug/survey/ui/i/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/b;->b(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/survey/ui/i/g/a;

    move-result-object v0

    iget v1, p0, Lcom/instabug/survey/ui/i/b$c;->a:I

    invoke-virtual {v0, v1}, Lcom/instabug/survey/ui/i/g/a;->getItem(I)Lcom/instabug/survey/ui/i/a;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/i/l/a;

    invoke-virtual {v0}, Lcom/instabug/survey/ui/i/l/a;->i()V

    .line 15
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instabug/survey/ui/i/b;->a(Lcom/instabug/survey/ui/i/b;Z)Z

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$c;->b:Lcom/instabug/survey/ui/i/b;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/h/c;->a(Landroid/app/Activity;)V

    :cond_3
    :goto_0
    return-void
.end method
