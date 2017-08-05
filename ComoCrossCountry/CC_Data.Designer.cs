﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.ComponentModel;
using System.Data.EntityClient;
using System.Data.Objects;
using System.Data.Objects.DataClasses;
using System.Linq;
using System.Runtime.Serialization;
using System.Xml.Serialization;

[assembly: EdmSchemaAttribute()]
#region EDM Relationship Metadata

[assembly: EdmRelationshipAttribute("comoModel", "FK_Race_Race", "Meet", System.Data.Metadata.Edm.RelationshipMultiplicity.ZeroOrOne, typeof(ComoCrossCountry.Meet), "Race", System.Data.Metadata.Edm.RelationshipMultiplicity.Many, typeof(ComoCrossCountry.Race), true)]

#endregion

namespace ComoCrossCountry
{
    #region Contexts
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    public partial class comoEntities : ObjectContext
    {
        #region Constructors
    
        /// <summary>
        /// Initializes a new comoEntities object using the connection string found in the 'comoEntities' section of the application configuration file.
        /// </summary>
        public comoEntities() : base("name=comoEntities", "comoEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new comoEntities object.
        /// </summary>
        public comoEntities(string connectionString) : base(connectionString, "comoEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        /// <summary>
        /// Initialize a new comoEntities object.
        /// </summary>
        public comoEntities(EntityConnection connection) : base(connection, "comoEntities")
        {
            this.ContextOptions.LazyLoadingEnabled = true;
            OnContextCreated();
        }
    
        #endregion
    
        #region Partial Methods
    
        partial void OnContextCreated();
    
        #endregion
    
        #region ObjectSet Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Meet> Meets
        {
            get
            {
                if ((_Meets == null))
                {
                    _Meets = base.CreateObjectSet<Meet>("Meets");
                }
                return _Meets;
            }
        }
        private ObjectSet<Meet> _Meets;
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        public ObjectSet<Race> Races
        {
            get
            {
                if ((_Races == null))
                {
                    _Races = base.CreateObjectSet<Race>("Races");
                }
                return _Races;
            }
        }
        private ObjectSet<Race> _Races;

        #endregion

        #region AddTo Methods
    
        /// <summary>
        /// Deprecated Method for adding a new object to the Meets EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToMeets(Meet meet)
        {
            base.AddObject("Meets", meet);
        }
    
        /// <summary>
        /// Deprecated Method for adding a new object to the Races EntitySet. Consider using the .Add method of the associated ObjectSet&lt;T&gt; property instead.
        /// </summary>
        public void AddToRaces(Race race)
        {
            base.AddObject("Races", race);
        }

        #endregion

    }

    #endregion

    #region Entities
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="comoModel", Name="Meet")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Meet : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Meet object.
        /// </summary>
        /// <param name="id">Initial value of the ID property.</param>
        public static Meet CreateMeet(global::System.Int32 id)
        {
            Meet meet = new Meet();
            meet.ID = id;
            return meet;
        }

        #endregion

        #region Simple Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 ID
        {
            get
            {
                return _ID;
            }
            set
            {
                if (_ID != value)
                {
                    OnIDChanging(value);
                    ReportPropertyChanging("ID");
                    _ID = StructuralObject.SetValidValue(value, "ID");
                    ReportPropertyChanged("ID");
                    OnIDChanged();
                }
            }
        }
        private global::System.Int32 _ID;
        partial void OnIDChanging(global::System.Int32 value);
        partial void OnIDChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Name
        {
            get
            {
                return _Name;
            }
            set
            {
                OnNameChanging(value);
                ReportPropertyChanging("Name");
                _Name = StructuralObject.SetValidValue(value, true, "Name");
                ReportPropertyChanged("Name");
                OnNameChanged();
            }
        }
        private global::System.String _Name;
        partial void OnNameChanging(global::System.String value);
        partial void OnNameChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.DateTime> Date
        {
            get
            {
                return _Date;
            }
            set
            {
                OnDateChanging(value);
                ReportPropertyChanging("Date");
                _Date = StructuralObject.SetValidValue(value, "Date");
                ReportPropertyChanged("Date");
                OnDateChanged();
            }
        }
        private Nullable<global::System.DateTime> _Date;
        partial void OnDateChanging(Nullable<global::System.DateTime> value);
        partial void OnDateChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Location
        {
            get
            {
                return _Location;
            }
            set
            {
                OnLocationChanging(value);
                ReportPropertyChanging("Location");
                _Location = StructuralObject.SetValidValue(value, true, "Location");
                ReportPropertyChanged("Location");
                OnLocationChanged();
            }
        }
        private global::System.String _Location;
        partial void OnLocationChanging(global::System.String value);
        partial void OnLocationChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String FormattedResults
        {
            get
            {
                return _FormattedResults;
            }
            set
            {
                OnFormattedResultsChanging(value);
                ReportPropertyChanging("FormattedResults");
                _FormattedResults = StructuralObject.SetValidValue(value, true, "FormattedResults");
                ReportPropertyChanged("FormattedResults");
                OnFormattedResultsChanged();
            }
        }
        private global::System.String _FormattedResults;
        partial void OnFormattedResultsChanging(global::System.String value);
        partial void OnFormattedResultsChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Map
        {
            get
            {
                return _Map;
            }
            set
            {
                OnMapChanging(value);
                ReportPropertyChanging("Map");
                _Map = StructuralObject.SetValidValue(value, true, "Map");
                ReportPropertyChanged("Map");
                OnMapChanged();
            }
        }
        private global::System.String _Map;
        partial void OnMapChanging(global::System.String value);
        partial void OnMapChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Doc1
        {
            get
            {
                return _Doc1;
            }
            set
            {
                OnDoc1Changing(value);
                ReportPropertyChanging("Doc1");
                _Doc1 = StructuralObject.SetValidValue(value, true, "Doc1");
                ReportPropertyChanged("Doc1");
                OnDoc1Changed();
            }
        }
        private global::System.String _Doc1;
        partial void OnDoc1Changing(global::System.String value);
        partial void OnDoc1Changed();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Doc2
        {
            get
            {
                return _Doc2;
            }
            set
            {
                OnDoc2Changing(value);
                ReportPropertyChanging("Doc2");
                _Doc2 = StructuralObject.SetValidValue(value, true, "Doc2");
                ReportPropertyChanged("Doc2");
                OnDoc2Changed();
            }
        }
        private global::System.String _Doc2;
        partial void OnDoc2Changing(global::System.String value);
        partial void OnDoc2Changed();

        #endregion

        #region Navigation Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("comoModel", "FK_Race_Race", "Race")]
        public EntityCollection<Race> Races
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedCollection<Race>("comoModel.FK_Race_Race", "Race");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedCollection<Race>("comoModel.FK_Race_Race", "Race", value);
                }
            }
        }

        #endregion

    }
    
    /// <summary>
    /// No Metadata Documentation available.
    /// </summary>
    [EdmEntityTypeAttribute(NamespaceName="comoModel", Name="Race")]
    [Serializable()]
    [DataContractAttribute(IsReference=true)]
    public partial class Race : EntityObject
    {
        #region Factory Method
    
        /// <summary>
        /// Create a new Race object.
        /// </summary>
        /// <param name="id">Initial value of the Id property.</param>
        public static Race CreateRace(global::System.Int32 id)
        {
            Race race = new Race();
            race.Id = id;
            return race;
        }

        #endregion

        #region Simple Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=true, IsNullable=false)]
        [DataMemberAttribute()]
        public global::System.Int32 Id
        {
            get
            {
                return _Id;
            }
            set
            {
                if (_Id != value)
                {
                    OnIdChanging(value);
                    ReportPropertyChanging("Id");
                    _Id = StructuralObject.SetValidValue(value, "Id");
                    ReportPropertyChanged("Id");
                    OnIdChanged();
                }
            }
        }
        private global::System.Int32 _Id;
        partial void OnIdChanging(global::System.Int32 value);
        partial void OnIdChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String Description
        {
            get
            {
                return _Description;
            }
            set
            {
                OnDescriptionChanging(value);
                ReportPropertyChanging("Description");
                _Description = StructuralObject.SetValidValue(value, true, "Description");
                ReportPropertyChanged("Description");
                OnDescriptionChanged();
            }
        }
        private global::System.String _Description;
        partial void OnDescriptionChanging(global::System.String value);
        partial void OnDescriptionChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public global::System.String FormattedResults
        {
            get
            {
                return _FormattedResults;
            }
            set
            {
                OnFormattedResultsChanging(value);
                ReportPropertyChanging("FormattedResults");
                _FormattedResults = StructuralObject.SetValidValue(value, true, "FormattedResults");
                ReportPropertyChanged("FormattedResults");
                OnFormattedResultsChanged();
            }
        }
        private global::System.String _FormattedResults;
        partial void OnFormattedResultsChanging(global::System.String value);
        partial void OnFormattedResultsChanged();
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [EdmScalarPropertyAttribute(EntityKeyProperty=false, IsNullable=true)]
        [DataMemberAttribute()]
        public Nullable<global::System.Int32> MeetId
        {
            get
            {
                return _MeetId;
            }
            set
            {
                OnMeetIdChanging(value);
                ReportPropertyChanging("MeetId");
                _MeetId = StructuralObject.SetValidValue(value, "MeetId");
                ReportPropertyChanged("MeetId");
                OnMeetIdChanged();
            }
        }
        private Nullable<global::System.Int32> _MeetId;
        partial void OnMeetIdChanging(Nullable<global::System.Int32> value);
        partial void OnMeetIdChanged();

        #endregion

        #region Navigation Properties
    
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [XmlIgnoreAttribute()]
        [SoapIgnoreAttribute()]
        [DataMemberAttribute()]
        [EdmRelationshipNavigationPropertyAttribute("comoModel", "FK_Race_Race", "Meet")]
        public Meet Meet
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Meet>("comoModel.FK_Race_Race", "Meet").Value;
            }
            set
            {
                ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Meet>("comoModel.FK_Race_Race", "Meet").Value = value;
            }
        }
        /// <summary>
        /// No Metadata Documentation available.
        /// </summary>
        [BrowsableAttribute(false)]
        [DataMemberAttribute()]
        public EntityReference<Meet> MeetReference
        {
            get
            {
                return ((IEntityWithRelationships)this).RelationshipManager.GetRelatedReference<Meet>("comoModel.FK_Race_Race", "Meet");
            }
            set
            {
                if ((value != null))
                {
                    ((IEntityWithRelationships)this).RelationshipManager.InitializeRelatedReference<Meet>("comoModel.FK_Race_Race", "Meet", value);
                }
            }
        }

        #endregion

    }

    #endregion

}