.class public final synthetic Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$VWg4ANmvIOu6uS4-6CL1Nrd8cSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/realm/RealmObjectSchema$Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$VWg4ANmvIOu6uS4-6CL1Nrd8cSM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$VWg4ANmvIOu6uS4-6CL1Nrd8cSM;

    invoke-direct {v0}, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$VWg4ANmvIOu6uS4-6CL1Nrd8cSM;-><init>()V

    sput-object v0, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$VWg4ANmvIOu6uS4-6CL1Nrd8cSM;->INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$VWg4ANmvIOu6uS4-6CL1Nrd8cSM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lio/realm/DynamicRealmObject;)V
    .locals 0

    invoke-static {p1}, Lbike/smarthalo/app/realmMigrations/SHRealmMigration;->lambda$migrate$6(Lio/realm/DynamicRealmObject;)V

    return-void
.end method
