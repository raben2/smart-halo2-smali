.class public final enum Lcom/instabug/chat/e/c$a;
.super Ljava/lang/Enum;
.source "FlatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/chat/e/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/chat/e/c$a;

.field public static final enum NONE:Lcom/instabug/chat/e/c$a;

.field public static final enum PLAYING:Lcom/instabug/chat/e/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/chat/e/c$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/chat/e/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/c$a;->NONE:Lcom/instabug/chat/e/c$a;

    new-instance v0, Lcom/instabug/chat/e/c$a;

    const-string v1, "PLAYING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/chat/e/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/chat/e/c$a;->PLAYING:Lcom/instabug/chat/e/c$a;

    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [Lcom/instabug/chat/e/c$a;

    sget-object v4, Lcom/instabug/chat/e/c$a;->NONE:Lcom/instabug/chat/e/c$a;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/instabug/chat/e/c$a;->$VALUES:[Lcom/instabug/chat/e/c$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/chat/e/c$a;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/chat/e/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/chat/e/c$a;

    return-object p0
.end method

.method public static values()[Lcom/instabug/chat/e/c$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/e/c$a;->$VALUES:[Lcom/instabug/chat/e/c$a;

    invoke-virtual {v0}, [Lcom/instabug/chat/e/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/chat/e/c$a;

    return-object v0
.end method
