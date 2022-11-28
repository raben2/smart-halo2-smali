.class public final enum Lcom/instabug/survey/e/c/f;
.super Ljava/lang/Enum;
.source "SyncingStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/survey/e/c/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/survey/e/c/f;

.field public static final enum NOT_AVAILABLE:Lcom/instabug/survey/e/c/f;

.field public static final enum READY_TO_SEND:Lcom/instabug/survey/e/c/f;

.field public static final enum SYNCED:Lcom/instabug/survey/e/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/instabug/survey/e/c/f;

    const-string v1, "READY_TO_SEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/survey/e/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/survey/e/c/f;->READY_TO_SEND:Lcom/instabug/survey/e/c/f;

    new-instance v0, Lcom/instabug/survey/e/c/f;

    const-string v1, "NOT_AVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/instabug/survey/e/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/survey/e/c/f;->NOT_AVAILABLE:Lcom/instabug/survey/e/c/f;

    new-instance v0, Lcom/instabug/survey/e/c/f;

    const-string v1, "SYNCED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/instabug/survey/e/c/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/survey/e/c/f;->SYNCED:Lcom/instabug/survey/e/c/f;

    const/4 v1, 0x3

    .line 2
    new-array v1, v1, [Lcom/instabug/survey/e/c/f;

    sget-object v5, Lcom/instabug/survey/e/c/f;->READY_TO_SEND:Lcom/instabug/survey/e/c/f;

    aput-object v5, v1, v2

    sget-object v2, Lcom/instabug/survey/e/c/f;->NOT_AVAILABLE:Lcom/instabug/survey/e/c/f;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/instabug/survey/e/c/f;->$VALUES:[Lcom/instabug/survey/e/c/f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/survey/e/c/f;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/survey/e/c/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/survey/e/c/f;

    return-object p0
.end method

.method public static values()[Lcom/instabug/survey/e/c/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/survey/e/c/f;->$VALUES:[Lcom/instabug/survey/e/c/f;

    invoke-virtual {v0}, [Lcom/instabug/survey/e/c/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/survey/e/c/f;

    return-object v0
.end method
