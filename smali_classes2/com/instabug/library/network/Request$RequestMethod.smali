.class public final enum Lcom/instabug/library/network/Request$RequestMethod;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/network/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/network/Request$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/network/Request$RequestMethod;

.field public static final enum Delete:Lcom/instabug/library/network/Request$RequestMethod;

.field public static final enum Get:Lcom/instabug/library/network/Request$RequestMethod;

.field public static final enum Post:Lcom/instabug/library/network/Request$RequestMethod;

.field public static final enum put:Lcom/instabug/library/network/Request$RequestMethod;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/instabug/library/network/Request$RequestMethod;

    const-string v1, "Get"

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/library/network/Request$RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$RequestMethod;->Get:Lcom/instabug/library/network/Request$RequestMethod;

    .line 2
    new-instance v0, Lcom/instabug/library/network/Request$RequestMethod;

    const-string v1, "Post"

    const-string v2, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/instabug/library/network/Request$RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    .line 3
    new-instance v0, Lcom/instabug/library/network/Request$RequestMethod;

    const-string v1, "put"

    const-string v2, "PUT"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/instabug/library/network/Request$RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$RequestMethod;->put:Lcom/instabug/library/network/Request$RequestMethod;

    .line 4
    new-instance v0, Lcom/instabug/library/network/Request$RequestMethod;

    const-string v1, "Delete"

    const-string v2, "DELETE"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/instabug/library/network/Request$RequestMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/library/network/Request$RequestMethod;->Delete:Lcom/instabug/library/network/Request$RequestMethod;

    const/4 v1, 0x4

    .line 5
    new-array v1, v1, [Lcom/instabug/library/network/Request$RequestMethod;

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Get:Lcom/instabug/library/network/Request$RequestMethod;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->put:Lcom/instabug/library/network/Request$RequestMethod;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/instabug/library/network/Request$RequestMethod;->$VALUES:[Lcom/instabug/library/network/Request$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/instabug/library/network/Request$RequestMethod;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/network/Request$RequestMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/network/Request$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/network/Request$RequestMethod;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/network/Request$RequestMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/network/Request$RequestMethod;->$VALUES:[Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0}, [Lcom/instabug/library/network/Request$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/network/Request$RequestMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request$RequestMethod;->name:Ljava/lang/String;

    return-object v0
.end method
