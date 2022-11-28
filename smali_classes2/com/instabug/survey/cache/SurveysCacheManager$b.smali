.class final Lcom/instabug/survey/cache/SurveysCacheManager$b;
.super Ljava/lang/Object;
.source "SurveysCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/cache/SurveysCacheManager;->update(Lcom/instabug/survey/models/Survey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/models/Survey;


# direct methods
.method constructor <init>(Lcom/instabug/survey/models/Survey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/cache/SurveysCacheManager$b;->a:Lcom/instabug/survey/models/Survey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/cache/SurveysCacheManager$b;->a:Lcom/instabug/survey/models/Survey;

    invoke-static {v0}, Lcom/instabug/survey/cache/a;->b(Lcom/instabug/survey/models/Survey;)J

    return-void
.end method
