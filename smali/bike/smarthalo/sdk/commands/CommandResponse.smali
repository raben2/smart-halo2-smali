.class public final enum Lbike/smarthalo/sdk/commands/CommandResponse;
.super Ljava/lang/Enum;
.source "CommandResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/sdk/commands/CommandResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/sdk/commands/CommandResponse;

.field public static final enum Denied:Lbike/smarthalo/sdk/commands/CommandResponse;

.field public static final enum Fail:Lbike/smarthalo/sdk/commands/CommandResponse;

.field public static final enum OK:Lbike/smarthalo/sdk/commands/CommandResponse;

.field public static final enum Unimplemented:Lbike/smarthalo/sdk/commands/CommandResponse;

.field public static final enum Unnecessary:Lbike/smarthalo/sdk/commands/CommandResponse;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandResponse;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbike/smarthalo/sdk/commands/CommandResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->OK:Lbike/smarthalo/sdk/commands/CommandResponse;

    .line 9
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandResponse;

    const-string v1, "Fail"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lbike/smarthalo/sdk/commands/CommandResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->Fail:Lbike/smarthalo/sdk/commands/CommandResponse;

    .line 10
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandResponse;

    const-string v1, "Denied"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lbike/smarthalo/sdk/commands/CommandResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->Denied:Lbike/smarthalo/sdk/commands/CommandResponse;

    .line 11
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandResponse;

    const-string v1, "Unimplemented"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lbike/smarthalo/sdk/commands/CommandResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->Unimplemented:Lbike/smarthalo/sdk/commands/CommandResponse;

    .line 12
    new-instance v0, Lbike/smarthalo/sdk/commands/CommandResponse;

    const-string v1, "Unnecessary"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lbike/smarthalo/sdk/commands/CommandResponse;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->Unnecessary:Lbike/smarthalo/sdk/commands/CommandResponse;

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Lbike/smarthalo/sdk/commands/CommandResponse;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandResponse;->OK:Lbike/smarthalo/sdk/commands/CommandResponse;

    aput-object v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandResponse;->Fail:Lbike/smarthalo/sdk/commands/CommandResponse;

    aput-object v1, v0, v3

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandResponse;->Denied:Lbike/smarthalo/sdk/commands/CommandResponse;

    aput-object v1, v0, v4

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandResponse;->Unimplemented:Lbike/smarthalo/sdk/commands/CommandResponse;

    aput-object v1, v0, v5

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandResponse;->Unnecessary:Lbike/smarthalo/sdk/commands/CommandResponse;

    aput-object v1, v0, v6

    sput-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->$VALUES:[Lbike/smarthalo/sdk/commands/CommandResponse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lbike/smarthalo/sdk/commands/CommandResponse;->value:I

    return-void
.end method

.method public static fromInt(I)Lbike/smarthalo/sdk/commands/CommandResponse;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 36
    sget-object p0, Lbike/smarthalo/sdk/commands/CommandResponse;->Fail:Lbike/smarthalo/sdk/commands/CommandResponse;

    return-object p0

    .line 33
    :pswitch_0
    sget-object p0, Lbike/smarthalo/sdk/commands/CommandResponse;->Unnecessary:Lbike/smarthalo/sdk/commands/CommandResponse;

    return-object p0

    .line 31
    :pswitch_1
    sget-object p0, Lbike/smarthalo/sdk/commands/CommandResponse;->Unimplemented:Lbike/smarthalo/sdk/commands/CommandResponse;

    return-object p0

    .line 29
    :pswitch_2
    sget-object p0, Lbike/smarthalo/sdk/commands/CommandResponse;->Denied:Lbike/smarthalo/sdk/commands/CommandResponse;

    return-object p0

    .line 27
    :cond_0
    sget-object p0, Lbike/smarthalo/sdk/commands/CommandResponse;->OK:Lbike/smarthalo/sdk/commands/CommandResponse;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/sdk/commands/CommandResponse;
    .locals 1

    .line 7
    const-class v0, Lbike/smarthalo/sdk/commands/CommandResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/commands/CommandResponse;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/sdk/commands/CommandResponse;
    .locals 1

    .line 7
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandResponse;->$VALUES:[Lbike/smarthalo/sdk/commands/CommandResponse;

    invoke-virtual {v0}, [Lbike/smarthalo/sdk/commands/CommandResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/sdk/commands/CommandResponse;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lbike/smarthalo/sdk/commands/CommandResponse;->value:I

    return v0
.end method
