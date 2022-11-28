.class public Lcom/instabug/bug/view/g/a;
.super Ljava/lang/Object;
.source "Disclaimer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/bug/view/g/a;->c:Z

    .line 5
    iput-object p1, p0, Lcom/instabug/bug/view/g/a;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/instabug/bug/view/g/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/instabug/bug/view/g/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/bug/view/g/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/instabug/bug/view/g/a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/bug/view/g/a;->c:Z

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/g/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/g/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/view/g/a;->c:Z

    return v0
.end method
