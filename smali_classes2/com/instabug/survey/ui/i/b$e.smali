.class Lcom/instabug/survey/ui/i/b$e;
.super Ljava/lang/Object;
.source "SurveyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/i/b;->f(I)V
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
    iput-object p1, p0, Lcom/instabug/survey/ui/i/b$e;->a:Lcom/instabug/survey/ui/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$e;->a:Lcom/instabug/survey/ui/i/b;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/b;->d(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/library/ui/custom/InstabugViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$e;->a:Lcom/instabug/survey/ui/i/b;

    invoke-static {v0}, Lcom/instabug/survey/ui/i/b;->d(Lcom/instabug/survey/ui/i/b;)Lcom/instabug/library/ui/custom/InstabugViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/InstabugViewPager;->scrollForward(Z)V

    :cond_0
    return-void
.end method
