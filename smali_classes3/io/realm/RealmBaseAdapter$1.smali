.class Lio/realm/RealmBaseAdapter$1;
.super Ljava/lang/Object;
.source "RealmBaseAdapter.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/RealmBaseAdapter;-><init>(Landroid/content/Context;Lio/realm/OrderedRealmCollection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener<",
        "Lio/realm/BaseRealm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/RealmBaseAdapter;


# direct methods
.method constructor <init>(Lio/realm/RealmBaseAdapter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lio/realm/RealmBaseAdapter$1;->this$0:Lio/realm/RealmBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/BaseRealm;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lio/realm/RealmBaseAdapter$1;->this$0:Lio/realm/RealmBaseAdapter;

    invoke-virtual {p1}, Lio/realm/RealmBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lio/realm/BaseRealm;

    invoke-virtual {p0, p1}, Lio/realm/RealmBaseAdapter$1;->onChange(Lio/realm/BaseRealm;)V

    return-void
.end method
