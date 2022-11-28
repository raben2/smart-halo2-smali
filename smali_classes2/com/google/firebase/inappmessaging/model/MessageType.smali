.class public final enum Lcom/google/firebase/inappmessaging/model/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/model/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/model/MessageType;

.field public static final enum BANNER:Lcom/google/firebase/inappmessaging/model/MessageType;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final enum CARD:Lcom/google/firebase/inappmessaging/model/MessageType;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final enum IMAGE_ONLY:Lcom/google/firebase/inappmessaging/model/MessageType;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final enum MODAL:Lcom/google/firebase/inappmessaging/model/MessageType;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public static final enum UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/google/firebase/inappmessaging/model/MessageType;

    const-string v1, "UNSUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/inappmessaging/model/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 24
    new-instance v0, Lcom/google/firebase/inappmessaging/model/MessageType;

    const-string v1, "MODAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/firebase/inappmessaging/model/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->MODAL:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 26
    new-instance v0, Lcom/google/firebase/inappmessaging/model/MessageType;

    const-string v1, "IMAGE_ONLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/firebase/inappmessaging/model/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->IMAGE_ONLY:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 28
    new-instance v0, Lcom/google/firebase/inappmessaging/model/MessageType;

    const-string v1, "BANNER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/firebase/inappmessaging/model/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->BANNER:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 30
    new-instance v0, Lcom/google/firebase/inappmessaging/model/MessageType;

    const-string v1, "CARD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/firebase/inappmessaging/model/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->CARD:Lcom/google/firebase/inappmessaging/model/MessageType;

    const/4 v0, 0x5

    .line 20
    new-array v0, v0, [Lcom/google/firebase/inappmessaging/model/MessageType;

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->MODAL:Lcom/google/firebase/inappmessaging/model/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->IMAGE_ONLY:Lcom/google/firebase/inappmessaging/model/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->BANNER:Lcom/google/firebase/inappmessaging/model/MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->CARD:Lcom/google/firebase/inappmessaging/model/MessageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->$VALUES:[Lcom/google/firebase/inappmessaging/model/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/MessageType;
    .locals 1

    .line 20
    const-class v0, Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/model/MessageType;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/model/MessageType;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->$VALUES:[Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/model/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/model/MessageType;

    return-object v0
.end method
