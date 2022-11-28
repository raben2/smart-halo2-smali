.class public final enum Lcom/instabug/chat/e/d$c;
.super Ljava/lang/Enum;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/chat/e/d$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/chat/e/d$c;

.field public static final enum NOT_AVAILABLE:Lcom/instabug/chat/e/d$c;

.field public static final enum READY_TO_BE_SENT:Lcom/instabug/chat/e/d$c;

.field public static final enum READY_TO_BE_SYNCED:Lcom/instabug/chat/e/d$c;

.field public static final enum SENT:Lcom/instabug/chat/e/d$c;

.field public static final enum STAY_OFFLINE:Lcom/instabug/chat/e/d$c;

.field public static final enum SYNCED:Lcom/instabug/chat/e/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/instabug/chat/e/d$c;

    const-string v1, "STAY_OFFLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/chat/e/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/d$c;->STAY_OFFLINE:Lcom/instabug/chat/e/d$c;

    new-instance v0, Lcom/instabug/chat/e/d$c;

    const-string v1, "READY_TO_BE_SENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/chat/e/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/d$c;->READY_TO_BE_SENT:Lcom/instabug/chat/e/d$c;

    new-instance v0, Lcom/instabug/chat/e/d$c;

    const-string v1, "SENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/chat/e/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/d$c;->SENT:Lcom/instabug/chat/e/d$c;

    new-instance v0, Lcom/instabug/chat/e/d$c;

    const-string v1, "READY_TO_BE_SYNCED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/chat/e/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/d$c;->READY_TO_BE_SYNCED:Lcom/instabug/chat/e/d$c;

    new-instance v0, Lcom/instabug/chat/e/d$c;

    const-string v1, "SYNCED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/instabug/chat/e/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/d$c;->SYNCED:Lcom/instabug/chat/e/d$c;

    new-instance v0, Lcom/instabug/chat/e/d$c;

    const-string v1, "NOT_AVAILABLE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/instabug/chat/e/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/d$c;->NOT_AVAILABLE:Lcom/instabug/chat/e/d$c;

    const/4 v1, 0x6

    .line 2
    new-array v1, v1, [Lcom/instabug/chat/e/d$c;

    sget-object v8, Lcom/instabug/chat/e/d$c;->STAY_OFFLINE:Lcom/instabug/chat/e/d$c;

    aput-object v8, v1, v2

    sget-object v2, Lcom/instabug/chat/e/d$c;->READY_TO_BE_SENT:Lcom/instabug/chat/e/d$c;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/chat/e/d$c;->SENT:Lcom/instabug/chat/e/d$c;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/chat/e/d$c;->READY_TO_BE_SYNCED:Lcom/instabug/chat/e/d$c;

    aput-object v2, v1, v5

    sget-object v2, Lcom/instabug/chat/e/d$c;->SYNCED:Lcom/instabug/chat/e/d$c;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/instabug/chat/e/d$c;->$VALUES:[Lcom/instabug/chat/e/d$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/chat/e/d$c;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/chat/e/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/chat/e/d$c;

    return-object p0
.end method

.method public static values()[Lcom/instabug/chat/e/d$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/e/d$c;->$VALUES:[Lcom/instabug/chat/e/d$c;

    invoke-virtual {v0}, [Lcom/instabug/chat/e/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/chat/e/d$c;

    return-object v0
.end method
