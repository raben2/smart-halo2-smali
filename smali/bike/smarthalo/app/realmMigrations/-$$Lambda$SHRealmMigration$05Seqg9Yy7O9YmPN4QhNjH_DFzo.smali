.class public final synthetic Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$05Seqg9Yy7O9YmPN4QhNjH_DFzo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/realm/RealmObjectSchema$Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$05Seqg9Yy7O9YmPN4QhNjH_DFzo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$05Seqg9Yy7O9YmPN4QhNjH_DFzo;

    invoke-direct {v0}, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$05Seqg9Yy7O9YmPN4QhNjH_DFzo;-><init>()V

    sput-object v0, Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$05Seqg9Yy7O9YmPN4QhNjH_DFzo;->INSTANCE:Lbike/smarthalo/app/realmMigrations/-$$Lambda$SHRealmMigration$05Seqg9Yy7O9YmPN4QhNjH_DFzo;

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

    invoke-static {p1}, Lbike/smarthalo/app/realmMigrations/SHRealmMigration;->lambda$migrate$1(Lio/realm/DynamicRealmObject;)V

    return-void
.end method
