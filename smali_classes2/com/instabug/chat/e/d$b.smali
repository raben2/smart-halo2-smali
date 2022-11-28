.class public final enum Lcom/instabug/chat/e/d$b;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/chat/e/d$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/chat/e/d$b;

.field public static final enum INBOUND:Lcom/instabug/chat/e/d$b;

.field public static final enum NOT_AVAILABLE:Lcom/instabug/chat/e/d$b;

.field public static final enum OUTBOUND:Lcom/instabug/chat/e/d$b;


# instance fields
.field private final direction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/chat/e/d$b;

    const-string v1, "INBOUND"

    const-string v2, "inbound"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/chat/e/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/chat/e/d$b;->INBOUND:Lcom/instabug/chat/e/d$b;

    new-instance v0, Lcom/instabug/chat/e/d$b;

    const-string v1, "OUTBOUND"

    const-string v2, "outbound"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/instabug/chat/e/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/chat/e/d$b;->OUTBOUND:Lcom/instabug/chat/e/d$b;

    new-instance v0, Lcom/instabug/chat/e/d$b;

    const-string v1, "NOT_AVAILABLE"

    const-string v2, "not-available"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/instabug/chat/e/d$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instabug/chat/e/d$b;->NOT_AVAILABLE:Lcom/instabug/chat/e/d$b;

    const/4 v1, 0x3

    .line 2
    new-array v1, v1, [Lcom/instabug/chat/e/d$b;

    sget-object v2, Lcom/instabug/chat/e/d$b;->INBOUND:Lcom/instabug/chat/e/d$b;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/chat/e/d$b;->OUTBOUND:Lcom/instabug/chat/e/d$b;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/instabug/chat/e/d$b;->$VALUES:[Lcom/instabug/chat/e/d$b;

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
    iput-object p3, p0, Lcom/instabug/chat/e/d$b;->direction:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/chat/e/d$b;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/chat/e/d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/chat/e/d$b;

    return-object p0
.end method

.method public static values()[Lcom/instabug/chat/e/d$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/e/d$b;->$VALUES:[Lcom/instabug/chat/e/d$b;

    invoke-virtual {v0}, [Lcom/instabug/chat/e/d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/chat/e/d$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/e/d$b;->direction:Ljava/lang/String;

    return-object v0
.end method
