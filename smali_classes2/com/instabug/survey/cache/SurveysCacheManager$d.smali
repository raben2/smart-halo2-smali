.class final Lcom/instabug/survey/cache/SurveysCacheManager$d;
.super Ljava/lang/Object;
.source "SurveysCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/cache/SurveysCacheManager;->delete(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/survey/cache/SurveysCacheManager$d;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/survey/cache/SurveysCacheManager$d;->a:J

    invoke-static {v0, v1}, Lcom/instabug/survey/cache/a;->a(J)V

    return-void
.end method
