.class public final enum Lbike/smarthalo/app/models/AssistantNotificationType;
.super Ljava/lang/Enum;
.source "AssistantNotificationType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/models/AssistantNotificationType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lbike/smarthalo/app/models/AssistantNotificationType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "Gmail",
        "Hangouts",
        "Whatsapp",
        "Messenger",
        "SMS",
        "Wechat",
        "PhoneCalls",
        "Slack",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/models/AssistantNotificationType;

.field public static final enum Gmail:Lbike/smarthalo/app/models/AssistantNotificationType;

.field public static final enum Hangouts:Lbike/smarthalo/app/models/AssistantNotificationType;

.field public static final enum Messenger:Lbike/smarthalo/app/models/AssistantNotificationType;

.field public static final enum PhoneCalls:Lbike/smarthalo/app/models/AssistantNotificationType;

.field public static final enum SMS:Lbike/smarthalo/app/models/AssistantNotificationType;

.field public static final enum Slack:Lbike/smarthalo/app/models/AssistantNotificationType;

.field public static final enum Wechat:Lbike/smarthalo/app/models/AssistantNotificationType;

.field public static final enum Whatsapp:Lbike/smarthalo/app/models/AssistantNotificationType;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lbike/smarthalo/app/models/AssistantNotificationType;

    new-instance v1, Lbike/smarthalo/app/models/AssistantNotificationType;

    const-string v2, "Gmail"

    const-string v3, "gmail"

    const/4 v4, 0x0

    .line 9
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/AssistantNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/AssistantNotificationType;->Gmail:Lbike/smarthalo/app/models/AssistantNotificationType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/AssistantNotificationType;

    const-string v2, "Hangouts"

    const-string v3, "hangouts"

    const/4 v4, 0x1

    .line 10
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/AssistantNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/AssistantNotificationType;->Hangouts:Lbike/smarthalo/app/models/AssistantNotificationType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/AssistantNotificationType;

    const-string v2, "Whatsapp"

    const-string v3, "whatsapp"

    const/4 v4, 0x2

    .line 11
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/AssistantNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/AssistantNotificationType;->Whatsapp:Lbike/smarthalo/app/models/AssistantNotificationType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/AssistantNotificationType;

    const-string v2, "Messenger"

    const-string v3, "messenger"

    const/4 v4, 0x3

    .line 12
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/AssistantNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/AssistantNotificationType;->Messenger:Lbike/smarthalo/app/models/AssistantNotificationType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/AssistantNotificationType;

    const-string v2, "SMS"

    const-string v3, "sms"

    const/4 v4, 0x4

    .line 13
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/AssistantNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/AssistantNotificationType;->SMS:Lbike/smarthalo/app/models/AssistantNotificationType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/AssistantNotificationType;

    const-string v2, "Wechat"

    const-string v3, "wechat"

    const/4 v4, 0x5

    .line 14
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/AssistantNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/AssistantNotificationType;->Wechat:Lbike/smarthalo/app/models/AssistantNotificationType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/AssistantNotificationType;

    const-string v2, "PhoneCalls"

    const-string v3, "calls"

    const/4 v4, 0x6

    .line 15
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/AssistantNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/AssistantNotificationType;->PhoneCalls:Lbike/smarthalo/app/models/AssistantNotificationType;

    aput-object v1, v0, v4

    new-instance v1, Lbike/smarthalo/app/models/AssistantNotificationType;

    const-string v2, "Slack"

    const-string v3, "slack"

    const/4 v4, 0x7

    .line 16
    invoke-direct {v1, v2, v4, v3}, Lbike/smarthalo/app/models/AssistantNotificationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbike/smarthalo/app/models/AssistantNotificationType;->Slack:Lbike/smarthalo/app/models/AssistantNotificationType;

    aput-object v1, v0, v4

    sput-object v0, Lbike/smarthalo/app/models/AssistantNotificationType;->$VALUES:[Lbike/smarthalo/app/models/AssistantNotificationType;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbike/smarthalo/app/models/AssistantNotificationType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/models/AssistantNotificationType;
    .locals 1

    const-class v0, Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/models/AssistantNotificationType;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/models/AssistantNotificationType;
    .locals 1

    sget-object v0, Lbike/smarthalo/app/models/AssistantNotificationType;->$VALUES:[Lbike/smarthalo/app/models/AssistantNotificationType;

    invoke-virtual {v0}, [Lbike/smarthalo/app/models/AssistantNotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/models/AssistantNotificationType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 8
    iget-object v0, p0, Lbike/smarthalo/app/models/AssistantNotificationType;->value:Ljava/lang/String;

    return-object v0
.end method
