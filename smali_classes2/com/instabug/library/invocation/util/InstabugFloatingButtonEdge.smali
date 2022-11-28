.class public final enum Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;
.super Ljava/lang/Enum;
.source "InstabugFloatingButtonEdge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

.field public static final enum LEFT:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

.field public static final enum RIGHT:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    const-string v1, "RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;->RIGHT:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    new-instance v0, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    const-string v1, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;->LEFT:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    const/4 v1, 0x2

    .line 2
    new-array v1, v1, [Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    sget-object v4, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;->RIGHT:Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;->$VALUES:[Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;->$VALUES:[Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    invoke-virtual {v0}, [Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/invocation/util/InstabugFloatingButtonEdge;

    return-object v0
.end method
