.class public Lcom/instabug/library/networkv2/request/a;
.super Ljava/lang/Object;
.source "UriWrapper.java"


# instance fields
.field private a:Landroid/net/Uri$Builder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/networkv2/request/a;->a:Landroid/net/Uri$Builder;

    return-void
.end method

.method public static a()Lcom/instabug/library/networkv2/request/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/library/networkv2/request/a;

    invoke-direct {v0}, Lcom/instabug/library/networkv2/request/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/a;->a:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/networkv2/request/a;->a:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
