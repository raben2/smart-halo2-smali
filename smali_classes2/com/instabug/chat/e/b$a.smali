.class public final enum Lcom/instabug/chat/e/b$a;
.super Ljava/lang/Enum;
.source "Chat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/chat/e/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/chat/e/b$a;

.field public static final enum LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/chat/e/b$a;

.field public static final enum NOT_AVAILABLE:Lcom/instabug/chat/e/b$a;

.field public static final enum READY_TO_BE_SENT:Lcom/instabug/chat/e/b$a;

.field public static final enum SENT:Lcom/instabug/chat/e/b$a;

.field public static final enum WAITING_ATTACHMENT_MESSAGE:Lcom/instabug/chat/e/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/instabug/chat/e/b$a;

    const-string v1, "WAITING_ATTACHMENT_MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/chat/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/b$a;->WAITING_ATTACHMENT_MESSAGE:Lcom/instabug/chat/e/b$a;

    new-instance v0, Lcom/instabug/chat/e/b$a;

    const-string v1, "READY_TO_BE_SENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/chat/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/b$a;->READY_TO_BE_SENT:Lcom/instabug/chat/e/b$a;

    new-instance v0, Lcom/instabug/chat/e/b$a;

    const-string v1, "LOGS_READY_TO_BE_UPLOADED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/chat/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/b$a;->LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/chat/e/b$a;

    new-instance v0, Lcom/instabug/chat/e/b$a;

    const-string v1, "SENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/chat/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/b$a;->SENT:Lcom/instabug/chat/e/b$a;

    new-instance v0, Lcom/instabug/chat/e/b$a;

    const-string v1, "NOT_AVAILABLE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/instabug/chat/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/b$a;->NOT_AVAILABLE:Lcom/instabug/chat/e/b$a;

    const/4 v1, 0x5

    .line 2
    new-array v1, v1, [Lcom/instabug/chat/e/b$a;

    sget-object v7, Lcom/instabug/chat/e/b$a;->WAITING_ATTACHMENT_MESSAGE:Lcom/instabug/chat/e/b$a;

    aput-object v7, v1, v2

    sget-object v2, Lcom/instabug/chat/e/b$a;->READY_TO_BE_SENT:Lcom/instabug/chat/e/b$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/chat/e/b$a;->LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/chat/e/b$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/chat/e/b$a;->SENT:Lcom/instabug/chat/e/b$a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/instabug/chat/e/b$a;->$VALUES:[Lcom/instabug/chat/e/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/chat/e/b$a;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/chat/e/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/chat/e/b$a;

    return-object p0
.end method

.method public static values()[Lcom/instabug/chat/e/b$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/e/b$a;->$VALUES:[Lcom/instabug/chat/e/b$a;

    invoke-virtual {v0}, [Lcom/instabug/chat/e/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/chat/e/b$a;

    return-object v0
.end method
