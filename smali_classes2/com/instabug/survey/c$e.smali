.class Lcom/instabug/survey/c$e;
.super Ljava/lang/Object;
.source "SurveysManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/c;


# direct methods
.method constructor <init>(Lcom/instabug/survey/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/c$e;->a:Lcom/instabug/survey/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getSurveys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/survey/c$e;->a:Lcom/instabug/survey/c;

    invoke-virtual {v1, v0}, Lcom/instabug/survey/c;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method
