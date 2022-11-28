.class Lio/realm/RealmRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "RealmRecyclerViewAdapter.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/RealmRecyclerViewAdapter;-><init>(Landroid/content/Context;Lio/realm/OrderedRealmCollection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/RealmRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lio/realm/RealmRecyclerViewAdapter;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lio/realm/RealmRecyclerViewAdapter$1;->this$0:Lio/realm/RealmRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Object;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lio/realm/RealmRecyclerViewAdapter$1;->this$0:Lio/realm/RealmRecyclerViewAdapter;

    invoke-virtual {p1}, Lio/realm/RealmRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
