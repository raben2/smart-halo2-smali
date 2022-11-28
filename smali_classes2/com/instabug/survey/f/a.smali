.class public Lcom/instabug/survey/f/a;
.super Ljava/lang/Object;
.source "CountryInfoResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/survey/f/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/survey/f/a$b;


# direct methods
.method public constructor <init>(Lcom/instabug/survey/f/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/survey/f/a;->a:Lcom/instabug/survey/f/a$b;

    return-void
.end method

.method static synthetic a(Lcom/instabug/survey/f/a;)Lcom/instabug/survey/f/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/survey/f/a;->a:Lcom/instabug/survey/f/a$b;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/survey/network/service/a;->a()Lcom/instabug/survey/network/service/a;

    move-result-object v0

    new-instance v1, Lcom/instabug/survey/f/a$a;

    invoke-direct {v1, p0}, Lcom/instabug/survey/f/a$a;-><init>(Lcom/instabug/survey/f/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/instabug/survey/network/service/a;->b(Landroid/content/Context;Lcom/instabug/library/network/Request$Callbacks;)V

    return-void
.end method
