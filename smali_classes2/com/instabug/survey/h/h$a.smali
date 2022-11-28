.class Lcom/instabug/survey/h/h$a;
.super Ljava/lang/Object;
.source "SurveysValidator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/h/h;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/instabug/survey/models/Survey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/survey/h/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/survey/models/Survey;Lcom/instabug/survey/models/Survey;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getDismissedAt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2}, Lcom/instabug/survey/models/Survey;->getDismissedAt()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/survey/models/Survey;

    check-cast p2, Lcom/instabug/survey/models/Survey;

    invoke-virtual {p0, p1, p2}, Lcom/instabug/survey/h/h$a;->a(Lcom/instabug/survey/models/Survey;Lcom/instabug/survey/models/Survey;)I

    move-result p1

    return p1
.end method
