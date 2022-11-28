.class public Lcom/instabug/library/model/g;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/model/g;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/instabug/library/model/g;->b:I

    .line 4
    iput-wide p3, p0, Lcom/instabug/library/model/g;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/model/g;->c:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/model/g;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/model/g;->a:Ljava/lang/String;

    return-object v0
.end method
