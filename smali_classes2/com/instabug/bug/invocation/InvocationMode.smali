.class public final enum Lcom/instabug/bug/invocation/InvocationMode;
.super Ljava/lang/Enum;
.source "InvocationMode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/bug/invocation/InvocationMode;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/bug/invocation/InvocationMode;

.field public static final enum CHATS_LIST:Lcom/instabug/bug/invocation/InvocationMode;

.field public static final enum NEW_BUG:Lcom/instabug/bug/invocation/InvocationMode;

.field public static final enum NEW_CHAT:Lcom/instabug/bug/invocation/InvocationMode;

.field public static final enum NEW_FEEDBACK:Lcom/instabug/bug/invocation/InvocationMode;

.field public static final enum PROMPT_OPTION:Lcom/instabug/bug/invocation/InvocationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/instabug/bug/invocation/InvocationMode;

    const-string v1, "PROMPT_OPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/bug/invocation/InvocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/invocation/InvocationMode;->PROMPT_OPTION:Lcom/instabug/bug/invocation/InvocationMode;

    new-instance v0, Lcom/instabug/bug/invocation/InvocationMode;

    const-string v1, "NEW_BUG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/bug/invocation/InvocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/invocation/InvocationMode;->NEW_BUG:Lcom/instabug/bug/invocation/InvocationMode;

    new-instance v0, Lcom/instabug/bug/invocation/InvocationMode;

    const-string v1, "NEW_FEEDBACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/bug/invocation/InvocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/invocation/InvocationMode;->NEW_FEEDBACK:Lcom/instabug/bug/invocation/InvocationMode;

    new-instance v0, Lcom/instabug/bug/invocation/InvocationMode;

    const-string v1, "NEW_CHAT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/instabug/bug/invocation/InvocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/invocation/InvocationMode;->NEW_CHAT:Lcom/instabug/bug/invocation/InvocationMode;

    new-instance v0, Lcom/instabug/bug/invocation/InvocationMode;

    const-string v1, "CHATS_LIST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/instabug/bug/invocation/InvocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/bug/invocation/InvocationMode;->CHATS_LIST:Lcom/instabug/bug/invocation/InvocationMode;

    const/4 v1, 0x5

    .line 2
    new-array v1, v1, [Lcom/instabug/bug/invocation/InvocationMode;

    sget-object v7, Lcom/instabug/bug/invocation/InvocationMode;->PROMPT_OPTION:Lcom/instabug/bug/invocation/InvocationMode;

    aput-object v7, v1, v2

    sget-object v2, Lcom/instabug/bug/invocation/InvocationMode;->NEW_BUG:Lcom/instabug/bug/invocation/InvocationMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/instabug/bug/invocation/InvocationMode;->NEW_FEEDBACK:Lcom/instabug/bug/invocation/InvocationMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/instabug/bug/invocation/InvocationMode;->NEW_CHAT:Lcom/instabug/bug/invocation/InvocationMode;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/instabug/bug/invocation/InvocationMode;->$VALUES:[Lcom/instabug/bug/invocation/InvocationMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/bug/invocation/InvocationMode;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/bug/invocation/InvocationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/bug/invocation/InvocationMode;

    return-object p0
.end method

.method public static values()[Lcom/instabug/bug/invocation/InvocationMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/invocation/InvocationMode;->$VALUES:[Lcom/instabug/bug/invocation/InvocationMode;

    invoke-virtual {v0}, [Lcom/instabug/bug/invocation/InvocationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/bug/invocation/InvocationMode;

    return-object v0
.end method
