.class public enum Lcom/instabug/library/l/b/f;
.super Ljava/lang/Enum;
.source "RetentionContract.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/instabug/library/l/b/f;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instabug/library/l/b/f;

.field public static final enum USER_DATA:Lcom/instabug/library/l/b/f;

.field public static final VALUE_UNDEFINED:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/library/l/b/f$a;

    const-string v1, "USER_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/instabug/library/l/b/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instabug/library/l/b/f;->USER_DATA:Lcom/instabug/library/l/b/f;

    const/4 v1, 0x1

    .line 2
    new-array v1, v1, [Lcom/instabug/library/l/b/f;

    aput-object v0, v1, v2

    sput-object v1, Lcom/instabug/library/l/b/f;->$VALUES:[Lcom/instabug/library/l/b/f;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/instabug/library/l/b/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/l/b/f;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instabug/library/l/b/f;
    .locals 1

    .line 1
    const-class v0, Lcom/instabug/library/l/b/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/instabug/library/l/b/f;

    return-object p0
.end method

.method public static values()[Lcom/instabug/library/l/b/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/l/b/f;->$VALUES:[Lcom/instabug/library/l/b/f;

    invoke-virtual {v0}, [Lcom/instabug/library/l/b/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instabug/library/l/b/f;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
