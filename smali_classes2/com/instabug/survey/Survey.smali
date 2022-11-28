.class public Lcom/instabug/survey/Survey;
.super Ljava/lang/Object;
.source "Survey.java"


# instance fields
.field private surveyId:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/instabug/survey/Survey;->title:Ljava/lang/String;

    .line 3
    iput-wide p1, p0, Lcom/instabug/survey/Survey;->surveyId:J

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/Survey;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/Survey;->title:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/survey/c;->k()Lcom/instabug/survey/c;

    move-result-object v0

    iget-wide v1, p0, Lcom/instabug/survey/Survey;->surveyId:J

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/c;->a(J)V

    :cond_0
    return-void
.end method
