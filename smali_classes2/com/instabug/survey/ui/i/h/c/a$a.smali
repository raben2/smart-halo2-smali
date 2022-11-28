.class Lcom/instabug/survey/ui/i/h/c/a$a;
.super Ljava/lang/Object;
.source "PartialMCQQuestionFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/i/h/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/ui/i/h/c/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/i/h/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/i/h/c/a$a;->a:Lcom/instabug/survey/ui/i/h/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/survey/ui/i/h/c/a$a;->a:Lcom/instabug/survey/ui/i/h/c/a;

    invoke-static {p1}, Lcom/instabug/survey/ui/i/h/c/a;->a(Lcom/instabug/survey/ui/i/h/c/a;)Lcom/instabug/survey/models/Survey;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/instabug/survey/ui/i/h/c/a$a;->a:Lcom/instabug/survey/ui/i/h/c/a;

    invoke-static {p1}, Lcom/instabug/survey/ui/i/h/c/a;->b(Lcom/instabug/survey/ui/i/h/c/a;)Lcom/instabug/survey/models/Survey;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/instabug/survey/ui/i/h/c/a;->a(Lcom/instabug/survey/ui/i/h/c/a;Lcom/instabug/survey/models/Survey;Z)V

    :cond_0
    return-void
.end method
